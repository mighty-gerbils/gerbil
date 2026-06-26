;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host db for persistent data
(import :std/db
        :std/db/sqlite
        :std/serde/marshal
        :std/serde/unmarshal
        :std/iter
        ../interface
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
                                 (host : HostID))
  => :list
  (do-with-lock self.mx
    (using (stmt (statement-cache-get self.statements sql-select-known-addresses-by-name-and-did) : Statement)
      (stmt.bind! [host.name host.did])
      (reverse!
       (let (known
             (for/fold (r []) (a (stmt.query))
               (let (a (unmarshal a))
                 (if (member a r) r (cons a r)))))
         (using (stmt (statement-cache-get self.statements sql-select-host-addresses-by-name-and-did) : Statement)
           (stmt.bind! [host.name host.did (coarse-time-now)])
           (for/fold (r known) (a (stmt.query))
             (let (a (unmarshal a))
               (if (member a r) r (cons a r))))))))))

(def (host-db-get-host-addresses-by-name (self : host-db)
                                         (name : :string))
  => :list
  (do-with-lock self.mx
    (using (stmt (statement-cache-get self.statements sql-select-known-addresses-by-name) : Statement)
      (stmt.bind! [name])
      (reverse!
       (let (known
             (for/fold (r []) (a (stmt.query))
               (let (a (unmarshal a))
                 (if (member a r) r (cons a r)))))
         (using (stmt (statement-cache-get self.statements sql-select-host-addresses-by-name) : Statement)
           (stmt.bind! [name (coarse-time-now)])
           (for/fold (r known) (a (stmt.query))
             (let (a (unmarshal a))
               (if (member a r) r (cons a r))))))))))

(def (host-db-add-host-address! (self  : host-db)
                                (addr  : HostAddress)
                                (expire : :integer))
  => :void
  (do-with-lock self.mx
    (using (stmt (statement-cache-get self.statements sql-insert-host-address) : Statement)
      (let (blob (marshal addr))
        (stmt.bind! [addr.host.name addr.host.did blob expire])
        (stmt.exec!)))))

(def (host-db-add-known-address! (self : host-db)
                                 (addr : HostAddress))
  => :void
  (do-with-lock self.mx
    (using (stmt (statement-cache-get self.statements sql-insert-known-address) : Statement)
      (let (blob (marshal addr))
          (stmt.bind! [addr.host.name addr.host.did blob])
          (stmt.exec!)))))

;;; sql stuffs
(def sql-schema #<<END-SQL
CREATE TABLE KnownAddresses (
 name VARCHAR,
 did VARCHAR,
 address BLOB
);

CREATE INDEX KnownAddressesIndex
  ON KnownAddresses
  (name);

CREATE INDEX KnownAddressesDIDIndex
  ON KnownAddresses
  (did);

CREATE TABLE HostAddresses (
  name VARCHAR,
  did VARCHAR,
  address BLOB,
  expire INTEGER64
);

CREATE INDEX HostAddressesIndex
  ON HostAddresses
  (name);

CREATE INDEX HostAddressesDIDIndex
  ON KnownAddresses
  (did);
END-SQL
)

(def sql-insert-known-address
  "INSERT INTO KnownAddresses (name, did, address) VALUES (?, ?, ?)")
(def sql-insert-host-address
  "INSERT INTO HostAddresses (name, did, address, expire) VALUES (?, ?, ?, ?)")
(def sql-select-known-addresses-by-name
  "SELECT address from KnownAddresses WHERE name = ?")
(def sql-select-known-addresses-by-name-and-did
  "SELECT address from KnownAddresses WHERE name = ? AND did = ?")
(def sql-select-host-addresses-by-name
  "SELECT address from HostAddresses WHERE name = ? AND expire > ?")
(def sql-select-host-addresses-by-name-and-did
  "SELECT address from HostAddresses WHERE name = ? AND did = ? AND expire > ?")
(def sql-delete-expired-addresses
  "DELETE FROM HostAddresses WHERE expire < ?")
