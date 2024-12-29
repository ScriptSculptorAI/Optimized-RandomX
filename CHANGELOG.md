# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
- Initial creation of the optimized RandomX assembly code.
- Added comprehensive comments and documentation for each section of the code.

### Changed
- Optimized alignment for better cache utilization and instruction fetch efficiency.
- Implemented early SIMD operations to improve pipelining and throughput.
- Enhanced register usage to minimize unnecessary moves and improve performance.
- Added prefetch instructions to reduce memory access latency.
- Simplified and optimized effective address calculations.

## [1.0.0] - 2024-12-28
### Added
- Initial release of the optimized RandomX assembly code.
- Included README, LICENSE, and CONTRIBUTING guidelines.
- Provided detailed usage instructions and example Makefile.