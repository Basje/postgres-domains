# Postgres domains

Using [Postgres] has been a very enjoyable experience, and through the years of
working with it I have run across some types that we use over and over again. At
first we wrote custom constraints for individual fields, but the powerful [domain]
system in Postgres allows for a much better, clearer and efficient approach. 

This repository is my attempt at collecting and documenting the types for future 
use.

## Included types
- *Password hash*: check for valid [Bcrypt] or [Argon2] hash format
- *UUID version 4*: check for valid [UUID version 4] format

## Roadmap
- Add *E-mail address* and *Semantic version* types
- Add better documentation for project goals
- Add examples

[Postgres]: https://www.postgresql.org/
[domain]: https://www.postgresql.org/docs/current/static/sql-createdomain.html
[Bcrypt]: https://en.wikipedia.org/wiki/Bcrypt
[Argon2]: https://en.wikipedia.org/wiki/Argon2
[UUID version 4]: https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_4_(random)
