# libeigen.a
iOS build for [libeigen](https://gitlab.com/libeigen/eigen)

## Dependencies

    * xcode
    * brew install git


## Build

    ./build-all.sh release

    ./build.sh build release arm64-apple-ios14.0


## Reference in Swift Module

``` swift

    .binaryTarget(
        name: "libeigen.a",
        url: "https://github.com/Sitelink-Spatial/libeigen.a/releases/download/r1/libeigen.a.xcframework.zip",
        checksum: "39ea13dc42bd6c702bf1a798bb7d611950aeebd7fc39b42d2073682dc0ed2b19"
    )

```

## References

    * https://gitlab.com/libeigen/eigen
