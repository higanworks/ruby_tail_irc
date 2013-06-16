# ruby_tail_irc

## description

STDIN send to irc.


## configration

Show `config/irc.yml.sample` and fill.


## Usage

### tail -f

`tail -f $file | send_irv.rb`

### send cmdline stdout

`chef-solo | send_irv.rb`