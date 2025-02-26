#####

# Changelog

All notable changes to "sqlite-showcase" will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Go to [legend](#legend---types-of-changes) for further information about the types of changes.

## [Unreleased]

## [0.6.0] - 2025-02-26

### Changed

- Unique log files instead of deleting old ones. [e67a362](https://github.com/sven-seyfert/sqlite-showcase/commit/e67a362384dcb86707088c12f460ac1ff1e5e396)
- Update create table statements (no autoincrement usage (not necessary)). [95bfe7b](https://github.com/sven-seyfert/sqlite-showcase/commit/95bfe7bee60ca23bef1bb50ee39efb044f3060d6)
- Update SQLite PRAGMA busy_timeout. [a65a9af](https://github.com/sven-seyfert/sqlite-showcase/commit/a65a9afe31b22fa20ff0c442e25064ae4a5602d0)

### Refactored

- Adjust _DBTeardown calling. [c873b8e](https://github.com/sven-seyfert/sqlite-showcase/commit/c873b8eb3626afc64d3b7a6206daa9da0c5f2236)

### Styled

- Update favicon icon. [d423445](https://github.com/sven-seyfert/sqlite-showcase/commit/d4234459e8be8cd683ed676be9203951c9642c07)

## [0.5.0] - 2025-02-25

### Changed

- Apply consistent usage of backwards slashes. [4cf72ab](https://github.com/sven-seyfert/sqlite-showcase/commit/4cf72ab6feea695944afb817a8e4b11d4cd51982)

### Documented

- Update README.md file. [8ac8145](https://github.com/sven-seyfert/sqlite-showcase/commit/8ac81459ce2ad576df381efb123f46e24e25d0bf)

## [0.4.0] - 2025-02-25

### Added

- Pre- and post configuration scripts (SQLite specific). [4cc9a27](https://github.com/sven-seyfert/sqlite-showcase/commit/4cc9a274a407908cbba69d80643383e33f25f7c0)

### Documented

- Project version bump. [53bf255](https://github.com/sven-seyfert/sqlite-showcase/commit/53bf255facc42d3542100ca94d104e713527b995)
- Update README.md file. [a278992](https://github.com/sven-seyfert/sqlite-showcase/commit/a2789920b63b62d1811df70dea767bf00b8b2d22)

### Styled

- Small formatting adjustments. [e15f6b6](https://github.com/sven-seyfert/sqlite-showcase/commit/e15f6b6bda89be9f693c24fc87ebc0dc5d4e9936)

## [0.3.0] - 2025-02-24

### Added

- Prettier config file. [18a9dfa](https://github.com/sven-seyfert/sqlite-showcase/commit/18a9dfa4f046c72862275a9b15c0de70950266c3)

### Changed

- Adjust database schema (structure). [5dc3303](https://github.com/sven-seyfert/sqlite-showcase/commit/5dc330384458b369bcb09150745806c7265be421)
- Adjust SQL test data. [888c201](https://github.com/sven-seyfert/sqlite-showcase/commit/888c201945cec928755ec0b7703d8e4e2d7ed112)
- Update .gitignore file. [7f9bdb4](https://github.com/sven-seyfert/sqlite-showcase/commit/7f9bdb47281548dab94889a4279cc4acbc36bdfc)

### Documented

- Project version bump. [3e5efe3](https://github.com/sven-seyfert/sqlite-showcase/commit/3e5efe3d8317db44dc58bf327a3f60db23155d65)
- Update README.md file. [3142d81](https://github.com/sven-seyfert/sqlite-showcase/commit/3142d81dc369bbb9da5db75c0bdd69d8804bc793)

### Styled

- Remove empty line. [c49a849](https://github.com/sven-seyfert/sqlite-showcase/commit/c49a849cfe1799317d3b9baa935e3812ac6d81ba)

## [0.2.0] - 2025-02-17

### Added

- One more SQLite statement (query) example. [b5f2485](https://github.com/sven-seyfert/sqlite-showcase/commit/b5f2485d910f28977a6382b8c720eb511283b3f6)

### Changed

- Small adjustment for RunWait visibility. [89c0cf1](https://github.com/sven-seyfert/sqlite-showcase/commit/89c0cf180bf5edcf76366501938a2c532c28e615)

### Documented

- Project version bump. [bdc790d](https://github.com/sven-seyfert/sqlite-showcase/commit/bdc790db6503b765cb5718545f226dfa2009c345)
- Update logo.png file. [ec4c672](https://github.com/sven-seyfert/sqlite-showcase/commit/ec4c672b2cd4635470b4c19aa4b4b22c6b10991b)
- Update README.md file. [135c04c](https://github.com/sven-seyfert/sqlite-showcase/commit/135c04cd73dfa00bf014af81c8bf1c6d6257a791)

## [0.1.0] - 2025-02-17

### Added

- Initial commit (code, data, dependencies). [7d34e8b](https://github.com/sven-seyfert/sqlite-showcase/commit/7d34e8b1f8bb8550ad7368dcd705ce4b0ad7abb0)
- Documentation and repository files (README, LICENSE, CHANGELOG). [6e292a9](https://github.com/sven-seyfert/sqlite-showcase/commit/6e292a9089175b47b8335dcd9c14ce79407aff88)

[Unreleased]: https://github.com/sven-seyfert/sqlite-showcase/compare/v0.6.0...HEAD
[0.6.0]: https://github.com/sven-seyfert/sqlite-showcase/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/sven-seyfert/sqlite-showcase/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/sven-seyfert/sqlite-showcase/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/sven-seyfert/sqlite-showcase/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/sven-seyfert/sqlite-showcase/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/sven-seyfert/sqlite-showcase/releases/tag/v0.1.0

---

### Legend - Types of changes

- `Added` for new features.
- `Changed` for changes in existing functionality.
- `Deprecated` for soon-to-be removed features.
- `Documented` for documentation only changes.
- `Fixed` for any bug fixes.
- `Refactored` for changes that neither fixes a bug nor adds a feature.
- `Removed` for now removed features.
- `Security` in case of vulnerabilities.
- `Styled` for changes like whitespaces, formatting, missing semicolons etc.

##

[To the top](#)