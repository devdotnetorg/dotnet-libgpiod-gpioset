# Alpine image with programm dotnet-gpioset on .NET 5 using [Libgpiod][1] for control GPIO. Developer boards such as Raspberry Pi, Banana Pi, Orange Pi, and etc. 

#### Upstream Links

* Docker Registry @ [devdotnetorg/dotnet-gpioset](https://hub.docker.com/r/devdotnetorg/dotnet-gpioset)
* GitHub @ [devdotnetorg/dotnet-libgpiod-gpioset](https://github.com/devdotnetorg/dotnet-libgpiod-gpioset)

## Image Tags ##

### Linux arm64 Tags ###

Tags  | Dockerfile  | OS Version  |  Libgpiod Version
------------- | --  | --  | --
`:aarch64` `:latest` | [Dockerfile](https://github.com/devdotnetorg/docker-libgpiod/blob/master/Dockerfile.alpine) | `alpine:3.13.5` | Latest ([v1.6.3](https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git/snapshot/libgpiod-1.6.3.tar.gz))

### Linux amd64 Tags ###

Tags  | Dockerfile  | OS Version  |  Libgpiod Version
------------- | --  | --  | --
`:amd64` `:latest` | [Dockerfile](https://github.com/devdotnetorg/docker-libgpiod/blob/master/Dockerfile.alpine) | `alpine:3.13.5` | Latest ([v1.6.3](https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git/snapshot/libgpiod-1.6.3.tar.gz))

## Quick Start

The dotnet-gpioset program uses the [Libgpiod] [1] library to control GPIO Developer boards, written in C # .NET5. Performs the same functions as the **gpioset** program. The input parameters are the same. A Docker image with the Libgpiod library is available - [docker-libgpiod] [2].

Running **dotnet-gpioset**. Turning on LED on Banana Pi M64 (ARM64), 1 - gpiochip1, 36 - control pin number, 1 - "true" value corresponds to 3V3 voltage:

`docker run --rm --name test-dotnet-gpioset --device /dev/gpiochip1 devdotnetorg/dotnet-gpioset 1 36=1`

**LED ON**

![LED ON](https://raw.githubusercontent.com/devdotnetorg/dotnet-libgpiod-gpioset/master/Images/IMG_20210504_014344_662.jpg)

LED OFF

`docker run --rm --name test-dotnet-gpioset --device /dev/gpiochip1 devdotnetorg/dotnet-gpioset 1 36=0`

## Links in Russian

- [Управляем контактами GPIO из C# .NET 5 в Linux на одноплатном компьютере Banana Pi M64 (ARM64) и Cubietruck (ARM32)](https://devdotnet.org/post/upravlyaem-gpio-iz-csharp-net-5-v-linux-na-banana-pi-m64-arm64-i-cubietruck-arm32/)

- [Работа с GPIO в Linux. Часть 6. Библиотека Libgpiod](https://devdotnet.org/post/rabota-s-gpio-v-linux-chast-6-biblioteka-libgpiod/)

## Links

- [Linux kernel GPIO user space interface — Sergio Prado embeddedbits.org](https://embeddedbits.org/new-linux-kernel-gpio-user-space-interface/)

- [An Introduction to chardev GPIO and Libgpiod on the Raspberry PI — Craig Peacock BeyondLogic](https://www.beyondlogic.org/an-introduction-to-chardev-gpio-and-libgpiod-on-the-raspberry-pi/)

- [Manage GPIO lines with gpiod — Sergio Tanzilli acmesystems.it](https://devdotnet.org/post/rabota-s-gpio-v-linux-chast-6-biblioteka-libgpiod/)

## License ##

[MIT License][3].

  [1]: https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git/
  [2]: https://github.com/devdotnetorg/docker-libgpiod
  [3]: https://github.com/devdotnetorg/docker-libgpiod/raw/master/LICENSE