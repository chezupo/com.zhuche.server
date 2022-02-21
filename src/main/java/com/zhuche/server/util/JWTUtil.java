package com.zhuche.server.util;

import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.response.authorization.CreateAuthorizationTokenResponse;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.UserRepository;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Component
public class JWTUtil {

    @Autowired
    private UserRepository userRepository;

    @Value("${springbootwebfluxjjwt.jjwt.secret}")
    private String secret;

    @Value("${springbootwebfluxjjwt.jjwt.expiration}")
    private String expirationTime;

    private Key key;

    @PostConstruct
    public void init() {
        this.key = Keys.hmacShaKeyFor(secret.getBytes());
    }

    private String platform = "platform";

    public Claims getAllClaimsFromToken(String token) {
        return Jwts.parserBuilder().setSigningKey(key).build().parseClaimsJws(token).getBody();
    }

    public User getUser() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

        String bearerToken = request.getHeader("Authorization");
        if  (bearerToken == null) {
            throw new MyRuntimeException( ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_TOKEN_CANNOT_BE_EMPTY );
        }
        final var tokenPrefix = "Bearer ";

        if (bearerToken.length() <= 7 || !bearerToken.startsWith(tokenPrefix)) {
            throw new MyRuntimeException(ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_UN_VALID_TOKEN);
        }
        bearerToken = bearerToken.split(" ")[1];

        if (!validateToken(bearerToken)) {
            throw new MyRuntimeException(ExceptionCodeConfig.AUTHORIZATION_ERROR_TYPE);
        }
        final var id = getIdFromToken(bearerToken);
        final var user = userRepository.findUserById(id);
        if (user == null) throw new MyRuntimeException(ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_NO_SUCH_USER);
        if (!user.getIsEnabled())  throw new MyRuntimeException(ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_ACCESS_DISABLE);

        return user;
    }

    public Long getIdFromToken(String token) {
        var id = getAllClaimsFromToken(token).getSubject();

        return Long.parseLong(id);
    }

    public Date getExpirationDateFromToken(String token) {
        return getAllClaimsFromToken(token).getExpiration();
    }

    private Boolean isTokenExpired(String token) {
        final Date expiration = getExpirationDateFromToken(token);
        return expiration.before(new Date());
    }

    private CreateAuthorizationTokenResponse generateToken(Map<String, Object> claims, Long id) {
        final var accessToken= doGenerateToken(claims, id);
        var expiration = Integer.valueOf(expirationTime);
        return CreateAuthorizationTokenResponse.builder()
            .accessToken(accessToken)
            .expiration(expiration)
            .tokenType("Bearer Token")
            .build();
    }
    public CreateAuthorizationTokenResponse generateToken(User user) {
        Map<String, Object> claims = new HashMap<>();
        claims.put("role", user.getRoles());
        return generateToken(claims, user.getId());
    }

    public CreateAuthorizationTokenResponse generateToken(User user, SocialType socialType) {
        Map<String, Object> claims = new HashMap<>();
        claims.put("role", user.getRoles());
        claims.put(platform, socialType);
        return generateToken(claims, user.getId());
    }

    private String doGenerateToken(Map<String, Object> claims, Long id) {
        var expirationTimeLong = Long.parseLong(expirationTime); //in second
        final Date createdDate = new Date();
        final Date expirationDate = new Date(createdDate.getTime() + expirationTimeLong * 1000);

        return Jwts.builder()
                .setClaims(claims)
                .setSubject(id + "")
                .setIssuedAt(createdDate)
                .setExpiration(expirationDate)
                .signWith(key)
                .compact();
    }

    public Boolean validateToken(String token) {
        return !isTokenExpired(token);
    }
}
