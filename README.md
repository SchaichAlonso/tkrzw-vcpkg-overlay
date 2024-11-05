# tkrzw-vcpkg-overlay

To enable the overlay, place it somewhere in the project tree and add the root of the overlay's relative path to your [vcpkg-configuration.json](https://learn.microsoft.com/vcpkg/reference/vcpkg-configuration-json)'s `overlay-ports` section, or in case no `vcpkg-configuration.json` exists, create it using

    {
        "$schema": "https://raw.githubusercontent.com/microsoft/vcpkg-tool/main/docs/vcpkg-configuration.schema.json",
        "overlay-ports": ["./path-to-tkrzw-vcpkg-overlay"]
    }

, replacing `./path-to-tkrzw-vcpkg-overlay` with the overlay's path in relation to the project's top level.