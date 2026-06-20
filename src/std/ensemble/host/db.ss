;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host db for persistent data
(import :std/db
        :std/db/sqlite
        ./types)
(export XXX)

(def (new-host-db (path : :string))
  => host-db
  XXX)


(def (db-get-host-addresses (self : host-db)
                            (host : :string))
  => :list
  XXX)

(def (db-add-host-addresses! (self  : host-db)
                             (host  : :string)
                             (addrs : :list)
                             (ttl   : :integer))
  XXX)
