# Ailoha Swift Agent

This repository publishes the Ailoha Swift agent as a binary Swift Package
Manager package. The package source is a small public manifest that resolves
`AilohaAgent.xcframework.zip`; the framework implementation is distributed as
a compiled binary artifact.

Add this package URL in Xcode:

```text
https://github.com/Redth/ailoha-releases
```

Package manifests can depend on the released binary package like this:

```swift
dependencies: [
    .package(url: "https://github.com/Redth/ailoha-releases", from: "0.1.13")
],
targets: [
    .target(
        name: "MyApp",
        dependencies: [
            .product(name: "AilohaAgent", package: "ailoha-releases")
        ]
    )
]
```

Then start the agent from debug/development-only code:

```swift
import AilohaAgent

#if DEBUG
.task {
    try? await Agent.shared.start()
}
#endif
```

Version `0.1.13` resolves to:

```text
https://github.com/Redth/ailoha-releases/releases/download/v0.1.13/AilohaAgent.xcframework.zip
```

The binary package is licensed under the Ailoha Binary Distribution License.
