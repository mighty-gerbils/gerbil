(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1783939348)
  (begin
    (define __modules
      (let ()
        (declare (not safe))
        (make-hash-table__%
         '#f
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value)))
    (define __load-mx (make-mutex 'loader))
    (define __load-cv (make-condition-variable 'loader))
    (define __load-path '())
    (define __load-order
      (let ()
        (declare (not safe))
        (make-hash-table__%
         '#f
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value)))
    (define __load-order-next '1)
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths176507%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths176507%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths176507%_)))
        (let ((__tmp176617
               (lambda (_%p176509%_)
                 (set! __load-path (cons _%p176509%_ __load-path))))
              (__tmp176616 (reverse! _%paths176507%_)))
          (declare (not safe))
          (##for-each __tmp176617 __tmp176616))))
    (define __set-load-path!
      (lambda (_%paths176495%_)
        (let ((_%paths176498%_ _%paths176495%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths176498%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths176498%_)))
          (set! __load-path _%paths176498%_))))
    (define set-load-path!
      (lambda (_%paths176481%_)
        (if (list? _%paths176481%_)
            (let ((_%paths176485%_ _%paths176481%_))
              (__set-load-path! _%paths176485%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths176481%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath176269%_)
        (let ((_%modpath176272%_ _%modpath176269%_))
          (mutex-lock! __load-mx)
          (let ((_%$e176304%_
                 (let* ((_%h176281%_ __modules)
                        (_%key176284%_ _%modpath176272%_)
                        (_%h176288%_ _%h176281%_)
                        (_%h176290%_ _%h176288%_))
                   (declare (not safe))
                   (__hash-get _%h176290%_ _%key176284%_))))
            (if _%$e176304%_
                (if (or (eq? 'builtin _%$e176304%_) (string? _%$e176304%_))
                    (let () (mutex-unlock! __load-mx) _%$e176304%_)
                    (if (eq? 'loading _%$e176304%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath176314%_ _%modpath176272%_)
                                 (_%modpath176319%_ _%modpath176314%_))
                            (__load-module _%modpath176319%_)))
                        (if (and (pair? _%$e176304%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e176304%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp176618 (cadr _%$e176304%_)))
                                (declare (not safe))
                                (raise __tmp176618)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e176304%_))))))
                (let ((_%$e176334%_ (__find-library-module _%modpath176272%_)))
                  (if _%$e176334%_
                      (let ()
                        (let* ((_%h176339%_ __modules)
                               (_%key176342%_ _%modpath176272%_)
                               (_%value176345%_ 'loading)
                               (_%h176349%_ _%h176339%_)
                               (_%h176351%_ _%h176349%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h176351%_
                           _%key176342%_
                           _%value176345%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp176620
                               (lambda (_%exn176365%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h176367%_ __modules)
                                        (_%key176370%_ _%modpath176272%_)
                                        (_%value176373%_
                                         (cons 'error
                                               (cons _%exn176365%_ '())))
                                        (_%h176377%_ _%h176367%_)
                                        (_%h176379%_ _%h176377%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h176379%_
                                    _%key176370%_
                                    _%value176373%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn176365%_))))
                              (__tmp176619
                               (lambda ()
                                 (let ((_%loaded-path176393%_
                                        (load _%$e176334%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h176395%_ __modules)
                                          (_%key176398%_ _%modpath176272%_)
                                          (_%value176401%_
                                           _%loaded-path176393%_)
                                          (_%h176405%_ _%h176395%_)
                                          (_%h176407%_ _%h176405%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h176407%_
                                      _%key176398%_
                                      _%value176401%_))
                                   (if (let* ((_%h176421%_ __load-order)
                                              (_%key176424%_ _%modpath176272%_)
                                              (_%h176428%_ _%h176421%_)
                                              (_%h176430%_ _%h176428%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h176430%_
                                          _%key176424%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h176441%_ __load-order)
                                                (_%key176444%_
                                                 _%modpath176272%_)
                                                (_%value176447%_
                                                 __load-order-next)
                                                (_%h176451%_ _%h176441%_)
                                                (_%h176453%_ _%h176451%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h176453%_
                                            _%key176444%_
                                            _%value176447%_))
                                         (set! __load-order-next
                                               (let* ((_%x176465%_
                                                       __load-order-next)
                                                      (_%x176470%_
                                                       _%x176465%_))
                                                 (declare (not safe))
                                                 (__1+ _%x176470%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path176393%_))))
                          (declare (not safe))
                          (__with-catch __tmp176620 __tmp176619)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath176272%_))))))))))
    (define load-module
      (lambda (_%modpath176255%_)
        (if (string? _%modpath176255%_)
            (let ((_%modpath176259%_ _%modpath176255%_))
              (__load-module _%modpath176259%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath176255%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath176113%_)
        (let ((_%modpath176116%_ _%modpath176113%_))
          (mutex-lock! __load-mx)
          (let ((_%$e176148%_
                 (let* ((_%h176125%_ __modules)
                        (_%key176128%_ _%modpath176116%_)
                        (_%h176132%_ _%h176125%_)
                        (_%h176134%_ _%h176132%_))
                   (declare (not safe))
                   (__hash-get _%h176134%_ _%key176128%_))))
            (if _%$e176148%_
                (if (eq? _%$e176148%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath176116%_)))
                    (if (eq? 'loading _%$e176148%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e176148%_)
                            (let ((_%latest-path176156%_
                                   (__find-library-module _%modpath176116%_)))
                              (if (or (equal? (path-extension _%$e176148%_)
                                              '".scm")
                                      (not (equal? _%$e176148%_
                                                   _%latest-path176156%_)))
                                  (begin
                                    (let* ((_%h176161%_ __modules)
                                           (_%key176164%_ _%modpath176116%_)
                                           (_%h176168%_ _%h176161%_)
                                           (_%h176170%_ _%h176168%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h176170%_
                                       _%key176164%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath176185%_
                                            _%modpath176116%_)
                                           (_%modpath176190%_
                                            _%modpath176185%_))
                                      (__load-module _%modpath176190%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e176148%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e176148%_))
                                          'error))
                                (let ()
                                  (let* ((_%h176201%_ __modules)
                                         (_%key176204%_ _%modpath176116%_)
                                         (_%h176208%_ _%h176201%_)
                                         (_%h176210%_ _%h176208%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h176210%_ _%key176204%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath176222%_ _%modpath176116%_)
                                         (_%modpath176227%_ _%modpath176222%_))
                                    (__load-module _%modpath176227%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e176148%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath176239%_ _%modpath176116%_)
                         (_%modpath176244%_ _%modpath176239%_))
                    (__load-module _%modpath176244%_))))))))
    (define reload-module!
      (lambda (_%modpath176099%_)
        (if (string? _%modpath176099%_)
            (let ((_%modpath176103%_ _%modpath176099%_))
              (__reload-module! _%modpath176103%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath176099%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath176033%_)
        (letrec ((_%find-compiled-file176035%_
                  (lambda (_%npath176088%_)
                    (let ((_%basepath176090%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath176088%_ '".o"))))
                      (let _%lp176092%_ ((_%current176094%_ '#f)
                                         (_%n176095%_ '1))
                        (let ((_%next176097%_
                               (let ((__tmp176621
                                      (number->string _%n176095%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath176090%_
                                  __tmp176621))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next176097%_))
                              (_%lp176092%_
                               _%next176097%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n176095%_ '1)))
                              _%current176094%_))))))
                 (_%find-source-file176036%_
                  (lambda (_%npath176084%_)
                    (let ((_%spath176086%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath176084%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath176086%_))
                          _%spath176086%_
                          '#f)))))
          (let _%lp176038%_ ((_%rest176040%_ (load-path)))
            (let* ((_%$%rest176041176049%_ _%rest176040%_)
                   (_%$%else176043176057%_ (lambda () '#f))
                   (_%$%K176045176072%_
                    (lambda (_%rest176060%_ _%dir176061%_)
                      (let* ((_%npath176063%_
                              (path-expand
                               _%modpath176033%_
                               (path-expand _%dir176061%_)))
                             (_%$e176065%_
                              (_%find-compiled-file176035%_ _%npath176063%_)))
                        (if _%$e176065%_
                            (path-normalize _%$e176065%_)
                            (let ((_%$e176068%_
                                   (_%find-source-file176036%_
                                    _%npath176063%_)))
                              (if _%$e176068%_
                                  (path-normalize _%$e176068%_)
                                  (_%lp176038%_ _%rest176060%_))))))))
              (if (pair? _%$%rest176041176049%_)
                  (let ((_%$%hd176046176075%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest176041176049%_)))
                        (_%$%tl176047176077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest176041176049%_))))
                    (let* ((_%dir176080%_ _%$%hd176046176075%_)
                           (_%rest176082%_ _%$%tl176047176077%_))
                      (_%$%K176045176072%_ _%rest176082%_ _%dir176080%_)))
                  (_%$%else176043176057%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result176031%_
                 (let* ((_%h176013%_ __modules)
                        (_%h176017%_ _%h176013%_)
                        (_%h176019%_ _%h176017%_))
                   (declare (not safe))
                   (__hash->list _%h176019%_))))
            (mutex-unlock! __load-mx)
            _%result176031%_))))
    (define __module-load-order
      (lambda (_%modpath175949%_)
        (let ((_%modpath175952%_ _%modpath175949%_))
          (mutex-lock! __load-mx)
          (let ((_%ord176009%_
                 (if (eq? (let* ((_%h175961%_ __modules)
                                 (_%key175964%_ _%modpath175952%_)
                                 (_%h175968%_ _%h175961%_)
                                 (_%h175970%_ _%h175968%_))
                            (declare (not safe))
                            (__hash-get _%h175970%_ _%key175964%_))
                          'builtin)
                     '0
                     (let ((_%$e176005%_
                            (let* ((_%h175985%_ __load-order)
                                   (_%key175988%_ _%modpath175952%_)
                                   (_%h175992%_ _%h175985%_)
                                   (_%h175994%_ _%h175992%_))
                              (declare (not safe))
                              (__hash-get _%h175994%_ _%key175988%_))))
                       (if _%$e176005%_ _%$e176005%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord176009%_)
                _%ord176009%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath175952%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath175935%_)
        (if (string? _%modpath175935%_)
            (let ((_%modpath175939%_ _%modpath175935%_))
              (__module-load-order _%modpath175939%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath175935%_)
              '#!void))))))
