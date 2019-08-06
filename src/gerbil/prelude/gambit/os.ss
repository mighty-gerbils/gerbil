;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: OS-related
package: gerbil/gambit

(export #t)
(extern namespace: #f
  create-fifo
  create-link
  create-symbolic-link
  shell-command
  command-line
  current-time
  time?
  time->seconds
  timeout->time
  seconds->time
  process-times
  cpu-time
  real-time
  time
  file-info
  file-info?
  file-info-type
  file-info-device
  file-info-inode
  file-info-mode
  file-info-number-of-links
  file-info-owner
  file-info-group
  file-info-size
  file-info-last-access-time
  file-info-last-modification-time
  file-info-last-change-time
  file-info-attributes
  file-info-creation-time
  file-device
  file-inode
  file-mode
  file-number-of-links
  file-owner
  file-group
  file-size
  file-last-access-time
  file-last-modification-time
  file-last-change-time
  file-attributes
  file-creation-time
  group-info
  group-info?
  group-info-name
  group-info-gid
  group-info-members
  user-name
  user-info
  user-info?
  user-info-name
  user-info-uid
  user-info-gid
  user-info-home
  user-info-shell
  host-name
  host-info
  host-info?
  host-info-name
  host-info-aliases
  host-info-addresses
  address-infos
  address-info?
  address-info-family
  address-info-socket-type
  address-info-protocol
  address-info-socket-info
  service-info
  service-info?
  service-info-name
  service-info-aliases
  service-info-port-number
  service-info-protocol
  protocol-info
  protocol-info?
  protocol-info-name
  protocol-info-aliases
  protocol-info-number
  network-info
  network-info?
  network-info-name
  network-info-aliases
  network-info-number

  tcp-client-peer-socket-info
  tcp-client-self-socket-info
  tcp-server-socket-info
  socket-info?
  socket-info-address socket-info-family socket-info-port-number

  ;; tty stuff
  tty?
  tty-history tty-history-set! tty-history-max-length-set!
  tty-text-attributes-set! tty-mode-reset tty-mode-set!
  tty-type-set!
  )
