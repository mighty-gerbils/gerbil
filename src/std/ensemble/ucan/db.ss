;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability context db
(import :std/error
        :std/interface
        :std/db
        :std/io/interface
        :std/db/sqlite
        :std/serde/marshal
        :std/serde/unmarshal
        :std/crypto/pkey
        :std/crypto/cipher
        :std/crypto/digest
        :std/crypto/kdf
        :std/encoding/hex
        :std/time/precise
        ../interface
        ./did)
(export #t)

;; max number of public keys to keep in the cache
(def max-public-keys 1024)
(def db-cleanup-interval 3600)

(defclass capability-db
  ((db : DB)
   ;; private key encryption secret
   (secret-key : :u8vector)
   ;; access mutex
   (mx : :mutex)
   ;; expired token cleanup thread
   (cleanup-thread : :thread)
   ;; has the db been closed
   (closed? : :boolean)
   ;;;;;;;;;;;;
   ;; caches ;;
   ;;;;;;;;;;;;
   ;; private keys; did -> PrivKey
   (private-keys : HashTable)
   ;; public keys; did -> PubKey
   (public-keys  : HashTable)
   ;; roots; did set
   (roots : :list)
   ;; set of tokens that are partially trusted to anchor input token
   ;; chains. applies to all actors/subjects.
   ;; token set
   (root-input-anchors : :list)
   ;; set of tokens that are used to anchor output token chains.
   ;; applies to all actors/subject
   ;; token set
   (root-output-anchors : :list)
   ;; per subject input actors
   ;; did string -> list
   (subject-input-anchors :- HashTable)
   ;; per subject output anchors
   ;; did string -> list
   (subject-output-anchors :- HashTable)
   ;; prepared statements
   (statements : StatementCache)
   )
  transparent: #f
  final: #t
  constructor: :init!)

(defmethod {:init! capability-db}
  (lambda (self (path : :string) (passphrase : :string))
    (let ((init-db? (not (file-exists? path)))
          (db (new-db (sqlite-open path)))
          (now (CoarseTime-seconds (current-time-coarse))))
      (when init-db?
        (DB-exec! db sql-schema []))
      (set! self.db db)
      (set! self.secret-key
        (scrypt (string->utf8 passphrase)
                (string->utf8 "capability-db")
                32))
      (set! self.mx
        (make-mutex 'ucan/db))
      (set! self.statements
        (StatementCache))
      (set! self.private-keys
        (make-hash-table-string))
      (set! self.public-keys
        (make-hash-table-string))
      (set! self.roots
        (DB-query db sql-select-roots []))
      (set! self.root-input-anchors
        (map unmarshal (DB-query db sql-select-root-input-anchors
                                 [now])))
      (set! self.root-output-anchors
        (map unmarshal (DB-query db sql-select-root-output-anchors
                                 [now])))
      (set! self.subject-input-anchors
        (make-hash-table-string))
      (set! self.subject-output-anchors
        (make-hash-table-string))
      (set! self.cleanup-thread
        (spawn/name 'capability-db/cleanup
          (cut __db-cleanup-thread self))))))

(def (db-close (self : capability-db))
  => :void
  (do-with-lock self.mx
    (unless self.closed?
      (set! self.closed? #t)
      (statement-cache-close self.statements)
      (self.db.close)
      (thread-send self.cleanup-thread 't)))
  (thread-join! self.cleanup-thread))

(def (filter-tokens now lst)
  (filter
   (lambda (token)
     (> (Token-expire token) now))
   lst))

(def (db-cleanup-thread (self : capability-db))
  (let loop ()
    (unless (thread-receive db-cleanup-interval #f)
      (do-with-lock self.mx
        (let (now (CoarseTime-seconds (current-time-coarse)))
          (db-exec! db sql-cleanup-root-input-anchors [now])
          (set! self.root-input-anchors
            (filter-tokens now self.root-input-anchors))
          (db-exec! self sql-cleanup-root-output-anchors [now])
          (set! self.root-output-anchors
            (filter-tokens now self.root-output-anchors))
          (db-exec! self sql-cleanup-subject-input-anchors [now])
          (self.subject-input-anchors.clear!)
          (db-exec! self sql-cleanup-subject-output-anchors [now])
          (self.subject-output-anchors.clear!)))
      (loop))))

(def (db-get-private-key (self : capability-db)
                         (did  : :string))
  => PrivKey
  (cond
   ((do-with-lock self.mx :- PrivKey
      (self.private-keys.ref did #f)))
   (else
    (let* ((result (do-with-lock self.mx
                     (db-query self sql-select-principal
                               [did])))
           (_ (when (null? result)
                (raise-contract-violation db-get-private-key "unknown principal" did)))
           (blob (car result))
           (privk (decrypt-privkey self.secret-key did blob)))
      (do-with-lock self.mx
        (self.private-keys.set! did privk))
      privk))))

(def (db-add-private-key! (self  : capability-db)
                          (privk : PrivKey))
  => :string
  (let* ((did (private-key->did privk))
         (blob (encrypt-privkey self.secret-key did privk)))
    (do-with-lock self.mx
      (when (null? (db-query self sql-select-principal
                             [did]))
        (db-exec! self sql-insert-principal
                  [did blob]))
      (self.private-keys.set! did privk))
    did))

(def (db-list-private-keys (self  : capability-db))
  (do-with-lock self.mx
    (db-query self sql-select-principal-dids
              [])))

(def (decrypt-privkey (secret-key : :u8vector)
                      (did        : :string)
                      (encrypted  : :u8vector))
  => PrivKey
  (let* ((cipher (Cipher::aes-256-cfb))
         (iv (subu8vector (string->utf8 did)
                          8 ;; skip did:key:
                          (fx+ 8 (cipher-iv-length cipher))))
         (decrypted (decrypt cipher secret-key iv encrypted)))
    ;; TODO support for other key types
    (bytes->ed25519-private-key decrypted)))

(def (encrypt-privkey (secret-key : :u8vector)
                      (did        : :string)
                      (privk      : PrivKey))
  => :u8vector
  (let* ((key-bytes (private-key->private-bytes privk))
         (cipher (Cipher::aes-256-cfb))
         (iv (subu8vector (string->utf8 did)
                          8 ;; skip did:key:
                          (fx+ 8 (cipher-iv-length cipher)))))
    (encrypt cipher secret-key iv key-bytes)))

(def (db-get-public-key (self : capability-db)
                        (did  : :string))
  => PubKey
  (cond
   ((do-with-lock self.mx :- PubKey
      (self.public-keys.ref did #f)))
   (else
    (let (pubk (did->public-key did))
      (do-with-lock self.mx
        (when (fx> (self.public-keys.length))
          (self.public-keys.clear!))
        (self.public-keys.set! did pubk))
      pubk))))

(def (db-get-roots (self : capability-db))
  => :list
  (do-with-lock self.mx :- :list
    self.roots))

(def (db-add-root! (self : capability-db)
                   (did  : :string))
  => :void
  (do-with-lock self.mx
    (unless (member did self.roots)
      (db-exec! self sql-insert-root [did])
      (set! self.roots (cons did self.roots)))))

(def (db-remove-root! (self : capability-db)
                      (did  : :string))
  => :void
  (do-with-lock self.mx
    (when (member did self.roots)
      (db-exec! self sql-delete-root [did])
      (set! self.roots (remove1 did self.roots)))))

(def (db-get-root-input-anchors (self : capability-db))
  => :list
  (let (now (CoarseTime-seconds (current-time-coarse)))
    (filter-tokens now (do-with-lock self.mx :- :list
                         self.root-input-anchors))))

(def (db-add-root-input-anchor! (self  : capability-db)
                                (token : Token))
  => :void
  (do-with-lock self.mx
    (unless (member token self.root-input-anchors)
      (let* ((blob (marshal token))
             (tid  (hex-encode (sha256 blob))))
        (db-exec! self sql-insert-root-input-anchor [tid blob token.expire])
        (set! self.root-input-anchors
          (cons token self.root-input-anchors))))))

(def (db-remove-root-input-anchor! (self  : capability-db)
                                   (token : Token))
  => :void
  (do-with-lock self.mx
    (when (member token self.root-input-anchors)
      (let* ((blob (marshal token))
             (tid  (hex-encode (sha256 blob))))
        (db-exec! self sql-delete-root-input-anchor [tid])
        (set! self.root-input-anchors
          (remove1 token self.root-input-anchors))))))

(def (db-get-root-output-anchors (self : capability-db))
  => :list
  (let (now (CoarseTime-seconds (current-time-coarse)))
    (filter-tokens now (do-with-lock self.mx :- :list
                         self.root-output-anchors))))

(def (db-add-root-output-anchor! (self  : capability-db)
                                (token : Token))
  => :void
  (do-with-lock self.mx
    (unless (member token self.root-output-anchors)
      (let* ((blob (marshal token))
             (tid  (hex-encode (sha256 blob))))
        (db-exec! self sql-insert-root-output-anchor [tid blob token.expire])
        (set! self.root-output-anchors
          (cons token self.root-output-anchors))))))

(def (db-remove-root-output-anchor! (self  : capability-db)
                                    (token : Token))
  => :void
  (do-with-lock self.mx
    (when (member token self.root-output-anchors)
      (let* ((blob (marshal token))
             (tid  (hex-encode (sha256 blob))))
        (db-exec! self sql-delete-root-output-anchor [tid])
        (set! self.root-output-anchors
          (remove1 token self.root-output-anchors))))))

(def (db-get-subject-input-anchors (self : capability-db)
                                   (subject : :string))
  => :list
  (let (now (CoarseTime-seconds (current-time-coarse)))
    (do-with-lock self.mx :- :list
      (cond
       ((self.subject-input-anchors.ref subject #f)
        => (cut filter-tokens now <>))
       (else
        (let (tokens
              (map unmarshal
                   (db-query self sql-select-subject-input-anchors
                             [subject now])))
          (self.subject-input-anchors.set! subject tokens)
          tokens))))))

(def (db-add-subject-input-anchor! (self : capability-db)
                                   (subject : :string)
                                   (token : Token))
  => :void
  (let* ((blob (marshal token))
         (tid  (hex-encode (sha256 blob))))
    (do-with-lock self.mx
      (when (null? (db-query self sql-select-subject-input-anchor
                             [subject tid]))
        (db-exec! self sql-insert-subject-input-anchor
                       [subject tid blob token.expire])
        (cond
         ((self.subject-input-anchors.ref subject #f)
          => (lambda (tokens)
               (self.subject-input-anchors.set!
                subject
                (cons token tokens)))))))))

(def (db-remove-subject-input-anchor! (self : capability-db)
                                      (subject : :string)
                                      (token : Token))
  => :void
  (let* ((blob (marshal token))
         (tid  (hex-encode (sha256 blob))))
    (do-with-lock self.mx
      (db-exec! self sql-delete-subject-input-anchor
                     [subject tid])
      (cond
       ((self.subject-input-anchors.ref subject #f)
        => (lambda (tokens)
             (self.subject-input-anchors.set!
              subject
              (remove1 token tokens))))))))

(def (db-get-subject-output-anchors (self : capability-db)
                                   (subject : :string))
  => :list
  (let (now (CoarseTime-seconds (current-time-coarse)))
    (do-with-lock self.mx :- :list
      (cond
       ((self.subject-output-anchors.ref subject #f)
        => (cut filter-tokens now <>))
       (else
        (let (tokens
              (map unmarshal
                   (db-query self sql-select-subject-output-anchors
                             [subject now])))
          (self.subject-output-anchors.set! subject tokens)
          tokens))))))

(def (db-add-subject-output-anchor! (self : capability-db)
                                    (subject : :string)
                                    (token : Token))
  => :void
  (let* ((blob (marshal token))
         (tid  (hex-encode (sha256 blob))))
    (do-with-lock self.mx
      (when (null? (db-query self sql-select-subject-output-anchor
                             [subject tid]))
        (db-exec! self sql-insert-subject-output-anchor
                       [subject tid blob token.expire])
        (cond
         ((self.subject-output-anchors.ref subject #f)
          => (lambda (tokens)
               (self.subject-output-anchors.set!
                subject
                (cons token tokens)))))))))

(def (db-remove-subject-output-anchor! (self : capability-db)
                                       (subject : :string)
                                       (token : Token))
  => :void
  (let* ((blob (marshal token))
         (tid  (hex-encode (sha256 blob))))
    (do-with-lock self.mx
      (db-exec! self sql-delete-subject-output-anchor
                     [subject tid])
      (cond
       ((self.subject-output-anchors.ref subject #f)
        => (lambda (tokens)
             (self.subject-output-anchors.set!
              subject
              (remove1 token tokens))))))))

(def (db-put-issued-token! (self : capability-db)
                           (token : Token))
  (let* ((blob (marshal token))
         (tid  (hex-encode (sha256 blob))))
    (do-with-lock self.mx
      (db-exec! self sql-insert-issued-token
                     [tid blob token.expire]))))

(def (db-list-issued-tokens (self : capability-db))
  (map unmarshal
       (do-with-lock self.mx
         (db-query self sql-select-all-issued-tokens
                   []))))

(def (db-get-statement (self : capability-db)
                       (sql  : :string))
  => Statement
  (statement-cache-get self.statements sql))

(def (db-exec! (self : capability-db)
               (sql  : :string)
               (args : :list))
  => :void
  (using (stmt (db-get-statement self sql) : Statement)
    (unless (null? args)
      (stmt.bind! args))
    (stmt.exec!)))

(def (db-query (self : capability-db)
               (sql  : :string)
               (args : :list))
  => :list
  (using (stmt (db-get-statement self sql) : Statement)
    (unless (null? args)
      (stmt.bind! args))
    (for/collect (r (stmt.query)) r)))


;;; SQL stuffs
(def sql-schema #<<END-SQL
CREATE TABLE Principals (
 did VARCHAR PRIMARY KEY,
 privKey BLOB
);

CREATE TABLE Roots (
 did VARCHAR PRIMARY KEY
);

CREATE TABLE RootInputAnchors (
 tokenId VARCHAR PRIMARY KEY,
 token BLOB,
 expire INTEGER64
);

CREATE TABLE RootOutputAnchors (
 tokenId VARCHAR PRIMARY KEY,
 token BLOB,
 expire INTEGER64
);

CREATE TABLE SubjectInputAnchors (
 subject VARCHAR,
 tokenId VARCHAR,
 token BLOB,
 expire INTEGER64
);

CREATE INDEX SubjectInputAnchorsIndex
  ON SubjectInputAnchors
  (subject);

CREATE TABLE SubjectOutputAnchors (
 subject VARCHAR,
 tokenId VARCHAR,
 token BLOB,
 expire INTEGER64
);

CREATE INDEX SubjectOutputAnchorsIndex
  ON SubjectOutputAnchors
  (subject);

CREATE TABLE IssuedTokens (
 tokenId VARCHAR PRIMARY KEY,
 token BLOB,
 expire INTEGER64
);

CREATE TABLE RevokedTokens (
 tokenId VARCHAR PRIMARY KEY,
 token BLOB
);

END-SQL
)

(def sql-insert-principal
  "INSERT INTO Principals (did, privKey) VALUES (?, ?)")
(def sql-select-principal
  "SELECT privKey FROM Principals WHERE did = ?")
(def sql-select-principal-dids
  "SELECT did FROM Principals")

(def sql-insert-root
  "INSERT INTO Roots (did) VALUES (?)")
(def sql-delete-root
  "DELETE FROM Roots WHERE did = ?")
(def sql-select-roots
  "SELECT did FROM Roots")

(def sql-insert-root-input-anchor
  "INSERT INTO RootInputAnchors (tokenId, token, expire) VALUES (?, ?, ?)")
(def sql-delete-root-input-anchor
  "DELETE FROM RootInputAnchors WHERE tokenId = ?")
(def sql-select-root-input-anchors
  "SELECT token FROM RootInputAnchors WHERE expire > ?")
(def sql-cleanup-root-input-anchors
  "DELETE FROM RootInputAnchors WHERE expire < ?")

(def sql-insert-root-output-anchor
  "INSERT INTO RootOutputAnchors (tokenId, token, expuire) VALUES (?, ?, ?)")
(def sql-delete-root-output-anchor
  "DELETE FROM RootOutputAnchors WHERE tokenId = ?")
(def sql-select-root-output-anchors
  "SELECT token FROM RootOutputAnchors WHERE expire > ?")
(def sql-cleanup-root-output-anchors
  "DELETE FROM RootOutputAnchors WHERE expire < ?")

(def sql-insert-subject-input-anchor
  "INSERT INTO SubjectInputAnchors (subject, tokenId, token, expire) VALUES (?, ?, ?, ?)")
(def sql-select-subject-input-anchor
  "SELECT token FROM SubjectInputAnchors WHERE subject = ? AND tokenId = ?")
(def sql-delete-subject-input-anchor
  "DELETE FROM SubjectInputAnchors WHERE subjet = ? AND tokenId = ?")
(def sql-select-subject-input-anchors
  "SELECT token FROM SubjectInputAnchors WHERE subject = ? AND expire > ?")
(def sql-cleanup-subject-input-anchors
  "DELETE FROM SubjectInputAnchors WHERE expire < ?")

(def sql-insert-subject-output-anchor
  "INSERT INTO SubjectOutputAnchors (subject, tokenId, token, expire) VALUES (?, ?, ?, ?)")
(def sql-select-subject-output-anchor
  "SELECT token FROM SubjectOutputAnchors WHERE subject = ? AND tokenId = ?")
(def sql-delete-subject-output-anchor
  "DELETE FROM SubjectOutputAnchors WHERE subject = ? AND tokenId = ?")
(def sql-select-subject-output-anchors
  "SELECT token FROM SubjectOutputAnchors WHERE subject = ? AND expire > ?")
(def sql-cleanup-subject-output-anchors
  "DELETE FROM SubjectOutputAnchors WHERE expire < ?")

(def sql-insert-issued-token
  "INSERT INTO IssuedTokens (tokenId, token, expire) VALUES (?, ?, ?)")
(def sql-select-issued-token
  "SELECT token FROM IssuedTokens WHERE tokenId = ?")
(def sql-select-all-issued-tokens
  "SELECT token FROM IssuedTokens")
(def sql-delete-expired-issued-tokens
  "DELETE FROM IssuedTokens WHERE expire < ?")

(def sql-insert-revoked-token
  "INSERT INTO RevokedTokens (tokenId, token) VALUES (?, ?)")
(def sql-select-revoked-token
  "SELECT token FROM RevokedTokens WHERE tokenId = ?")
