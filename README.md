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

  - access `/redirect-test/static/form.html`

* send form & redirect

  - push send button to post `/redirect-test/redirect`
  - spring security try to redirect to `https://google.com/`
  - `DefaultRedirectStrategy` redirect to `""`

* check results by browser

  in my environment...

  - IE : redirect to top page (`/redirect-test`)
  - Firefox : redirect to login page (`/redirect-test/redirect`) ※405 not allowed
  - Chrome : redirect to login page (`/redirect-test/redirect`) ※blank page...
