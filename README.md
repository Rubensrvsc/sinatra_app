# sinatra_app
A small sinatra app with purpose training

In this application get a oportunity of study the DLS sinatra where could testing following features of DSL

- Helpers
- Database
- Testing (with rspec)
- Api rest offered for DSL
- Business Logic with Dry-Monads

## Libraries used in this app

- [Sinatra](http://sinatrarb.com/)
- [Rspec](https://rspec.info/)
- [Dry-Monads](https://dry-rb.org/gems/dry-monads/1.3/)
- [Sinatra-ActiveRecord](https://github.com/sinatra-activerecord/sinatra-activerecord)
- [ruby-jwt](https://jwt.github.io/ruby-jwt/)

## Running this project

```
bundle install
```

```
bundle exec app.rb
```

### Here are the application endpoints

| Method |EndPoint | Description |
|---|---|---|
| POST | `http://localhost:4567/register/` | Registra o usuário na aplicação |
| POST | `http://localhost:4567/login/` | Loga o usuário na aplicação |
| GET | `http://localhost:4567/users/` | Obtém os usuários da aplicação |

## Documentation of EndPoints

### Endpoint:

- POST: `/register`

+ Request


    `{
        "username": "Maria",
        "email":"Maria@gmail.com",
        "password": "Maria12345",
    }`

+ Response

    `{
        "username": "Maria",
        "email":"Maria@gmail.com",
        "password": "Maria12345",
    }`
    
### Endpoint:

- POST: `/login`

+ Request

    `{
        "username": "Maria",
        "password": "Maria12345",
    }`
    
 - Response

    `hsahsahjsahjsahsahhsahsahsahjhjsahsasnnmasnmasnmsa`
    
 ### Endpoint:
 
 - GET: `/users`

+ Header

    `HTTP_AUTH: a394f0b3d620a3c8081d7beac398ea73ec14f1e4`

    ```
    [
        {
            "username": "Maria",
            "email": "Maria@gmail.com",
        },
        
        {
            "username": "Joao",
            "email": "Joao@mail.com",
        }
    ]
    ```

