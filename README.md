ACL for Zend Framework 2 using Zfc-User and Zfc-Rbac

Introduction
------------
This is a simple development code for ZF2 ACL using Zfc-User(Doctrine) and Zfc-Rbac


Installation
------------

Using Composer (recommended)
----------------------------
The recommended way to get a working copy of this project is to clone the repository
and use `composer` to install dependencies using the `create-project` command:

    curl -s https://getcomposer.org/installer | php --
    php composer.phar create-project --repository-url="http://packages.zendframework.com" zendframework/skeleton-application path/to/install

Alternately, clone the repository and manually invoke `composer` using the shipped
`composer.phar`:

    cd my/project/dir
    git clone git://github.com/svmashtaler/zf2-zfcuser-zfcrbac
    cd ZendSkeletonApplication
    php composer.phar self-update
    php composer.phar install


