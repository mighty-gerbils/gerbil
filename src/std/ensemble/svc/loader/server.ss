;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble loader server
(import :std/error
        :std/interface
        :std/io
        :std/iter
        :std/db
        :std/db/sqlite
        :std/log
        :std/crypto/digest
        :std/time/precise
        :std/encoding/zlib
        :std/encoding/hex
        ../../interface
        ../../ucan/ext
        ../../actor
        ./protocol)
(export new-loader-service)

(deflogger log name: "/svc/loader")

(defstruct loader-service
  ((host       : Host)
   (capability : CapabilityContext)
   (path       : :string)
   (mx         : :mutex)
   (db         : DB)
   (statements : StatementCache)
   ;; loaded uploads
   ;; sha256 string set
   (loaded     : HashTable)
   ;; upload history
   ;; sha256 -> Available | InProgress | !Error
   (uploads    : HashTable))
  constructor: :init!
  final: #t)

(defstruct upload-stream-reactor
  ((svc : loader-service)
   (req : Loader.upload))
  final: #t)

(defmethod {:init! loader-service}
  (lambda (self (host : Host) (path : :string))
    (let* ((modules-path (path-expand "modules" path))
           (upload-path  (path-expand "upload" path))
           (db-path      (path-expand "loader.db" path))
           (init-db?     (not (file-exists? db-path))))
      (create-directory* path)
      (create-directory* modules-path)
      (create-directory* upload-path)
      (set! self.host host)
      (set! self.capability
        (SecurityContext-capability-context
         (ActorContext-security-context
          (host.actor-context))))
      (set! self.path path)
      (set! self.mx (make-mutex 'svc/loader))
      (let (db (sqlite-open db-path))
        (when init-db?
          (DB-exec! db sql-schema []))
        (set! self.db db)
        (set! self.statements (StatementCache db)))
      (set! self.loaded (make-hash-table-string))
      (set! self.uploads (make-hash-table-string)))))

(def (new-loader-service (host : Host) (path : :string))
  => Actor
  (let* ((svc   (loader-service host path))
         (actor (new-actor host actor:/svc/loader)))
    (Actor-on-close actor (cut loader-service-on-close svc))
    (Loader::loader-service actor svc)
    actor))

(def (loader-service-on-close (self : loader-service))
  (do-with-lock self.mx
    (report-errors (statement-cache-close self.statements))
    (report-errors (self.db.close))))

(definline (coarse-time-now)
  => :integer
  (CoarseTime-seconds (current-time-coarse)))

(def (collect (stmt : Statement))
  => :list
  (for/collect (r (stmt.query)) r))

(def (loadable-module-file (sha256 : :string) (base : :string))
  (let (modname (string-append sha256 ".o1"))
    (path-expand modname (path-expand "modules" base))))

(def upload-stream-ttl 120)

(implement-protocol Loader loader-service
  (version
   (lambda (self actor msg req)
     (actor.reply! msg (gerbil-version-string))))
  (list-modules
   (lambda (self actor msg req)
     (actor.reply! msg (list-modules))))
  (load-library
   (lambda (self actor msg req)
     (let (reply
           (try
            (log.debug "loading library module"
                       module: req.module)
            (load-module req.module)
            (log.info "loaded library module"
                      module: req.module)
            (!OK req.module)
            (catch (e)
              (log.error "error loading library module"
                         module: req.module
                         exception: (exception->string e))
              (!Error e))))
       (actor.reply! msg reply))))
  (load-uploaded
   (lambda (self actor msg req)
     (let (reply
           (do-with-lock self.mx
             ;; check to see if it is a known module
             (using (stmt (statement-cache-get self.statements sql-select-module-by-hash) : Statement)
               (stmt.bind! [req.sha256])
               (match (collect stmt)
                 ([#(sha256 linker timestamp)]
                  (cond
                   ((self.loaded.ref sha256 #f)
                    ;; it's already loaded
                    => !OK)
                   (else
                    ;; not loaded, load it
                    (let (modpath (loadable-module-file sha256 self.path))
                      (try
                       (log.debug "loading module"
                                  hash: sha256)
                       ;; we need the linker name since the name
                       ;; of the module is the hash
                       (##load modpath void #f #f linker #f)
                       (self.loaded.set! sha256 sha256)
                       (log.info "loaded module"
                                 hash: sha256)
                       (!OK sha256)
                       (catch (e)
                         (log.error "error loading module"
                                    hash: sha256
                                    exception: (exception->string e))
                         (!Error e)))))))
                 (else
                  (!Error/c "unknown module" 'hash: req.sha256))))))
       (actor.reply! msg reply))))
  (list-uploaded
   (lambda (self actor msg req)
     (let (reply
           (do-with-lock self.mx
             (using (stmt
                     (if req.name
                       ;; if a name is specified, select by friendly name
                       (using (stmt (statement-cache-get self.statements sql-select-named-modules-by-name) : Statement)
                         (stmt.bind! [req.name])
                         stmt)
                       ;; otherwise just select all
                       (statement-cache-get self.statements sql-select-all-named-modules))
                     : Statement)
               (for/collect (r (stmt.query))
                 (match r
                   (#(name sha256 timestamp)
                    (Available name sha256 timestamp)))))))
       (actor.reply! msg reply))))
  (delete-uploaded
   (lambda (self actor msg req)
     (let (reply
           (do-with-lock self.mx
             (if (self.loaded.ref sha256 #f)
               ;; it is currently loaded, dont risk segfault
               (!Error/c "cannot delete loaded module"
                         'hash: sha256)
               ;; not loaded, do we know of it?
               (using (stmt (statement-cache-get self.statements sql-select-module-by-hash) : Statement)
                 (stmt.bind! [req.sha256])
                 (match (collect stmt)
                   ([#(sha256 linker timestamp)]
                    ;; we know it, kill it
                    (let (modpath (loadable-module-file sha256 self.path))
                      (try
                       ;; transaction, we poke both tables
                       (self.db.begin!)
                       (using (stmt (statement-cache-get self.statements sql-delete-named-modules-by-hash) : Statement)
                         (stmt.bind! [sha256])
                         (stmt.exec!))
                       (using (stmt (statement-cache-get self.statements sql-delete-module-by-hash) : Statement)
                         (stmt.bind! [sha256])
                         (stmt.exec!))
                       ;; now delete
                       (delete-file modpath)
                       (self.uploads.delete! sha256)
                       ;; and commit
                       (self.db.commit!)
                       (!OK sha256)
                       (catch (e)
                         (self.db.abort!)
                         (!Error e)))))
                   (else
                    (!Error/c "unknown module" 'hash: req.sha256)))))))
       (actor.reply! msg reply))))
  (upload
   (lambda (self actor msg req)
     (let (reply
           (do-with-lock self.mx
             (using (stmt (statement-cache-get self.statements sql-select-module-by-hash) : Statement)
                 (stmt.bind! [req.sha256])
                 (match (collect stmt)
                   ([#(sha256 linker timestamp)]
                    ;; it is already available, insert friendly
                    ;; name mapping unless that already exists
                    (using (stmt (statement-cache-get self.statements sql-select-named-modules-by-name-and-hash) : Statement)
                      (stmt.bind! [req.name req.sha256])
                      (match (collect stmt)
                        ([_]
                         ;; mapping already exists
                         (Available req.name sha256 timestamp))
                        (else
                         ;; insert a new friendly name mapping
                         (using (stmt (statement-cache-get self.statements sql-insert-named-module) : Statement)
                           (stmt.bind! [req.name sha256 (coarse-time-now)])
                           (stmt.exec!)
                           (Available req.name sha256 timestamp))))))
                   (else
                    ;; it is not available, check if there is an upload in progress
                    (def (upload!)
                      (let* ((stream-name (string-append "/tmp/loader/" req.sha256))
                             (expire
                              (+ (coarse-time-now) upload-stream-ttl))
                             (token
                              (self.capability.grant!
                               DELEGATE
                               (self.host.did)
                               msg.source.did
                               stream-name ""
                               expire))
                             (stream-reactor
                              (StreamReactor
                               (upload-stream-reactor self req))))
                        (self.host.set-stream-reactor! stream-name
                                                       stream-reactor
                                                       expire #t)
                        (self.uploads.set! req.sha256 (InProgress stream-name))
                        (Continue stream-name token)))

                    (cond
                     ((self.uploads.ref req.sha256 #f)
                      => (lambda (status)
                           (if (!Error? status)
                             (upload!)
                             status)))
                     (else
                      (upload!))))))))
       (actor.reply! msg req))))
  (upload-status
   (lambda (self actor msg req)
     (let (reply
           (do-with-lock self.mx
             (cond
              ((self.uploads.ref req.sha256 #f))
              (else
               (!Error/c "unknown upload"
                         'hash: req.sha256)))))
       (actor.reply! msg req)))))

(implement StreamReactor upload-stream-reactor
  (handle-stream!
   (lambda (self stream)
     ;; first read the file, zlib compressed
     (log.debug "begin upload"
                hash: self.req.sha256)
     (let* ((upload-path
             (path-expand (string-append self.req.sha256
                                         "." (number->string (coarse-time-now))
                                         ".o1")
                          (path-expand "upload" self.svc.path)))
            (reader (open-inflate-reader (stream.reader))))
       (call-with-file-writer
        upload-path
        (cut io-copy! reader <>))
       (log.debug "upload done"
                  hash: self.req.sha256)
       ;; check the uploaded file hash
       (let (upload-sha256
             (hex-encode
              (call-with-file-reader
               upload-path
               (cut digest-from-reader! (Digest::sha256) <>))))
         (do-with-lock self.svc.mx
           (if (equal? self.req.sha256 upload-sha256)
             ;; hash matches, insert into the db and move the
             ;; file to the modules directory
             (let* ((modpath (loadable-module-file upload-sha256 self.svc.path))
                    (now (coarse-time-now)))
               (try
                (self.svc.db.begin!)
                (using (stmt (statement-cache-get self.svc.statements
                                                  sql-insert-module)
                             : Statement)
                  (stmt.bind! [self.req.sha256 self.req.linker now])
                  (stmt.exec!))
                (using (stmt (statement-cache-get self.svc.statements
                                                  sql-insert-named-module)
                             : Statement)
                  (stmt.bind! [self.req.name self.req.sha256 now])
                  (stmt.exec!))
                (rename-file upload-path modpath)
                (self.svc.uploads.set! self.req.sha256
                                       (Available self.req.name self.req.sha256 now))
                (self.svc.db.commit!)
                (catch (e)
                  (self.svc.db.abort!)
                  (log.error "unhandled exception during upload finalization"
                             hash: self.req.sha256
                             exception: (exception->string e))
                  (when (file-exists? modpath)
                    (delete-file modpath))
                  (when (file-exists? upload-path)
                    (delete-file upload-path))
                  (self.svc.uploads.set! self.req.sha256 (!Error e)))))
             ;; digest mismatch, it is an error.
             (begin
               (log.warn "upload digest mismatch"
                         hash: self.req.sha256
                         computed: upload-sha256)
               (self.svc.uploads.set! self.req.sha256
                                      (!Error/c "upload digest mismatch"
                                                'hash: self.req.sha256
                                                'computed: upload-sha256))
               (delete-file upload-path))))))))
  (on-expire
   (lambda (self)
     (do-with-lock self.svc.mx
       ;; the client didn't initiate upload before expiration
       (when (InProgress? (self.svc.uploads.ref self.req.sha256 #f))
         (log.warn "upload expired"
                   hash: self.req.sha256)
         (self.svc.uploads.set! self.req.sha256
                                (!Error/c "upload expired"
                                          'hash: self.req.sha256)))))))

;;; sql stuffs
(def sql-schema #<<END-SQL
CREATE TABLE Modules (
 sha256 VARCHAR PRIMARY KEY,
 linker VARCHAR,
 timestamp INTEGER
);

CREATE TABLE ModuleNames (
 name VARCHAR,
 sha256 VARCHAR,
 timestamp INTEGER
);

CREATE INDEX ModuleNameIndex
  ON ModuleNames
  (name);

CREATE INDEX ModuleHashIndex
  ON ModuleNames
  (name, sha256);
END-SQL
)

(def sql-insert-module
  "INSERT INTO Modules (sha256, linker, timestamp) VALUES (?, ?, ?)")
(def sql-insert-named-module
  "INSERT INTO ModuleNames (name, sha256, timestamp) VALUES (?, ?, ?)")
(def sql-select-module-by-hash
  "SELECT * FROM Modules WHERE sha256 = ?")
(def sql-delete-module-by-hash
  "DELETE FROM Modules WHERE sha256 = ?")
(def sql-select-named-modules-by-name
  "SELECT * FROM ModuleNames WHERE name = ?")
(def sql-select-named-modules-by-name-and-hash
  "SELECT * FROM ModuleNames WHERE name = ? AND sha256 = ?")
(def sql-select-all-named-modules
  "SELECT * FROM ModuleNames")
(def sql-delete-named-modules-by-hash
  "DELETE FROM ModuleNames WHERE sha256 = ?")
