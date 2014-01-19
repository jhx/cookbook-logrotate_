CHANGELOG
=========

0.2.0 / 2014-01-19
------------------

- `BREAK` #25 - require `logrotate` cookbook ~> v1.4.0
  (technically, this isn't a breaking change, but integration tests will fail with older cookbook version because we specify a non-default file mode)
- `NEW`[#25] add integration tests (via test-kitchen/serverspec)
- `NEW`[#8] add ruby lint checks (via rubocop), fix flagged items
- `NEW`[#7] add unit tests (via chefspec)
- `NEW`[#6] add syntax checks (via knife)
- `NEW`[#5] add support for travis-ci
- `NEW`[#3] add cookbook lint checks (via foodcritic), fix flagged items
- `NEW`[#2] add specification files for ruby version
- `IMPROVE` 58653cd1c53765118bf0864f924c7363ea50938f - default recipe now includes other recipe(s)
- `IMPROVE`[#26] update README
- `IMPROVE`[96a60b09d2bb4bd6099c845503b768aa6aa66603] miscellaneous updates to unit specs


0.1.0 / 2013-01-26
------------------

- `NEW`[7c103c2a49d1591ee19ab4031fc209d620932a3a] initial release


Legend
------

- `BREAK`   - breaking changes
- `FIX`     - bug fix
- `IMPROVE` - improvement of existing feature
- `NEW`     - new feature
