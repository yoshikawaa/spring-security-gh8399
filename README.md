### sample app for https://github.com/spring-projects/spring-security/pull/8399

#### install

* maven 3 required

#### build & run

```console
$ mvn clean package cargo:run
```

#### access

```text
http://localhost:8080/redirect-test/
```

#### action

* access top page

  - access `/redirect-test`
  - spring security redirect to `/redirect-test/login`

* login & redirect to `redirectTo` URL

  - push login button
  - spring security login & try to redirect to `https://google.com/`
  - `DefaultRedirectStrategy` redirect to `""` (please check logging)

* check results by browser

  in my environment...

  - IE : redirect to top page (`/redirect-test`)
  - Firefox : redirect to login page (`/redirect-test/login`)
  - Chrome : redirect to login page (`/redirect-test/login`) ※blank page...
