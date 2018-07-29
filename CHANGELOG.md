# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog]
and this project adheres to [Semantic Versioning].


## [Unreleased]


## [0.2.0] - 2018-07-29

### Added
- `--current` option
- Description for `--`
- `get_exit()`

### Changed
- Rewrite `check_profile()`
- `edit`, `remove` and `rename` commands accept `--current`
- `add` uses `user.*` configs as placeholders
  when only `PROFILE` parameter is passed
  and there is no current profile set
  - It also automatically sets the current profile for convenience
- Use variables to store error codes
- Use sequential error codes

### Fixed
- Internal argument expansion
- Typo in help section


## [0.1.1] - 2018-07-28

### Fixed
- Typo in description


## [0.1.0] - 2018-07-28

### Added
- `git-profile`
- Makefile
- Documentation


[Keep a Changelog]: http://keepachangelog.com/en/1.0.0/
[Semantic Versioning]: http://semver.org/spec/v2.0.0.html

[Unreleased]: https://github.com/aryelgois/git-profile/compare/v0.2.0...develop
[0.2.0]: https://github.com/aryelgois/git-profile/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/aryelgois/git-profile/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/aryelgois/git-profile/compare/7e6b88e221e3c2ad1fff65626c8aff9af6a2197e...v0.1.0
