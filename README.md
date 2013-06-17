# ruby_tail_irc

## description

STDIN send to irc.


## Install

```
$ gem install bunder --no-ri --no-rdoc
$ bundle install
```

### Depends 

- gem[`carrier-pigeon`]
- gem[`irc-socket`]

## configration

Copy `config/irc.yml.sample`  to `config/irc.yml` and fill it for your irc server.


## Usage

- send_irc.rb :  uses `carrier-pigeon`
- send_irc_sock.rb : uses `irc-socket`, 

### tail -f

`tail -f $file | send_irc.rb`

or 

`tail -f $file | send_sock.rb`

### send cmdline stdout

`chef-cient | ./send_irc.rb`

`chef-cient | ./send_irc_sock.rb`

#### irc output example

```
17:42 irclogger: [2013-06-16T17:42:00+09:00] INFO: *** Chef 11.4.4 ***
17:42 irclogger: [2013-06-16T17:42:01+09:00] INFO: [inet6] no default interface, picking the first ipaddress
17:42 irclogger: [2013-06-16T17:42:01+09:00] INFO: ipaddress and ip6address are set from different interfaces (net0 & lo0), macaddress has been set using the ipaddress interface
17:42 irclogger: [2013-06-16T17:42:03+09:00] INFO: Run List is [role[base_smartos], role[monit_smartos], role[postgres-server], role[app_server_common], role[sandbox_update]]
-- snip --
```