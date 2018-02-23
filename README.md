# ubuntu-ss
在Ubuntu上搭建自己的梯子S(hadow)s(ocks)

### 注意：使用前请看说明，重启服务器之后，需要再次启动一下shadowsocks，设置开机自启在最后。

## 附加使用配置文件启动shadowsocks

如果使用配置文件启动shadowsocks，ss.sh里面的最后一步就删掉不要执行。首先，创建配置文件

    vi /etc/shadowsocks.json

里面的内容为

    {
        "server":"my_server_ip",
        "server_port": 2173,
        "local_address": "127.0.0.1",
        "local_port": 1080,
        "password": "mypassword",
        "timeout": 300,
        "method": "rc4-md5"
    }

`server`: 你的服务器IP;

`server_port`: 端口号，请务必自己修改成其他不常用的端口，谨防被封;

`password`: 自己设置一个密码;

`method`: 加密方式，可以不改。

配置好之后，给文件赋一下权限。

    sudo chmod 755 /etc/shadowsocks.json

使用配置文件启动shadowsocks

    sudo ssserver -c /etc/shadowsocks.json -d start


### 设置开机启动

Ubuntu的开机启动项是在`/etc/rc.local`中设置的，打开它，在`exit 0`前面把启动ss的命令`sudo ssserver -c /etc/shadowsocks.json -d start`加上就行了。