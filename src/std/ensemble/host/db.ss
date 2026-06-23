;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host db for persistent data
(import :std/db
        :std/db/sqlite
        :std/serde/marshal
        :std/serde/unmarshal
        :std/iter
        ./types
        ./util)
(export #t)

(defmethod {:init! host-db}
  (lambda (self (path : :string) (tgroup : :thread-group))
    (let ((init-db? (not (file-exists? path)))
          (db (new-db (sqlite-open path))))
      (when init-db?
        (DB-exec! db sql-schema []))
      (set! self.mx (make-mutex 'host/db))
      (set! self.db db)
      (set! self.statements (StatementCache db))
      (set! self.thread
        (spawn-actor (cut host-db-cleanup self)
                     []
                     'host/db-cleanup
                     tgroup)))))

(def (host-db-close (self : host-db))
  => :void
  (do-with-lock self.mx
    (unless self.closed?
      (set! self.closed? #t)
      (thread-send self.thread 't)
      (self.db.close)
      (statement-cache-close self.statements))))

(def host-db-cleanup-interval 1200)

(def (host-db-cleanup (self : host-db))
  (let loop ()
    (unless (thread-receive host-db-cleanup-interval #f)
      (do-with-lock self.mx
        (using (stmt (statement-cache-get self.statements sql-delete-expired-addresses)
                     : Statement)
          (let (now (coarse-time-now))
            (stmt.bind! [now])
            (stmt.exec!)
            (loop)))))))

(def (host-db-get-host-addresses (self : host-db)
                            (host : :string))
  => :list
  (do-with-lock self.mx
    (using (stmt (statement-cache-get self.statements sql-select-known-addresses) : Statement)
      (stmt.bind! [host])
      (let (known (for/collect (a (stmt.query)) (unmarshal a)))
        (using (stmt (statement-cache-get self.statements sql-select-host-addresses) : Statement)
          (stmt.bind! [host (coarse-time-now)])
          (let (active (for/collect (a (stmt.query)) (unmarshal a)))
            (foldr (lambda (a r)
                     (if (member a r) r (cons a r)))
                   active known)))))))

(def (host-db-add-host-addresses! (self  : host-db)
                             (host  : :string)
                             (addrs : :list)
                             (ttl   : :integer))
  => :void
  (do-with-lock self.mx
    (using (stmt (statement-cache-get self.statements sql-insert-host-address) : Statement)
      (let (expire (+ (coarse-time-now) ttl))
        (for (a addrs)
          (let (blob (marshal a))
            (stmt.bind! [host blob expire])
            (stmt.exec!)
            (stmt.reset!)))))))

(def (host-db-add-known-addresses! (self  : host-db)
                              (host  : :string)
                              (addrs : :list))
  => :void
  (do-with-lock self.mx
    (using (stmt (statement-cache-get self.statements sql-insert-known-address) : Statement)
      (for (a addrs)
        (let (blob (marshal a))
          (stmt.bind! [host blob])
          (stmt.exec!)
          (stmt.reset!))))))

;;; sql stuffs
(def sql-schema #<<END-SQL
CREATE TABLE KnownAddresses (
 host VARCHAR,
 address BLOB
);

CREATE INDEX KnownAddressesIndex
  ON KnownAddresses
  (host);

CREATE TABLE HostAddresses (
 host VARCHAR,
 address BLOB,
 expire INTEGER64
);

CREATE INDEX HostAddressesIndex
  ON HostAddresses
  (host);
END-SQL
)

(def sql-insert-known-address
  "INSERT INTO KnownAddresses (host, address) VALUES (?, ?)")
(def sql-insert-host-address
  "INSERT INTO HostAddresses (host, address, expire) VALUES (?, ?, ?)")
(def sql-select-known-addresses
  "SELECT address from KnownAddresses WHERE host = ?")
(def sql-select-host-addresses
  "SELECT address from HostAddresses WHERE host = ? AND expire > ?")
(def sql-delete-expired-addresses
  "DELETE FROM HostAddresses WHERE expire < ?")
