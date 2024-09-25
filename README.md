# JLinux

>[!warning]
> This project is **now archived** and is being maintained over at [SysPatch](https://github.com/0x4248/SysPatch)

JLinux is a alpine linux filesystem patcher that allows you to run Java applications on boot.

## How to install

To install JLinux, you will need to have a working alpine linux installation. Then you will need a java application that you want to run on boot. Then you will need to run the following commands:

```bash
make
```

or build using the docker image:

```bash
make docker
```

then install with the tar file:

```
tar -xvf /root/jlinux-patch.tar -C /&& reboot
```

This will reboot the system into the JLinux installation and then will reboot again back into your `boot.jar` application.

## License

This project is licensed under the GNU Genial Public License v3.0 - see the [LICENSE](LICENSE) file for details.
