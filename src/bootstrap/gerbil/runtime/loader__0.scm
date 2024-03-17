(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710677337)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath79552_ _reload?79553_)
        (let ((_$e79555_
               (if (let () (declare (not safe)) (not _reload?79553_))
                   (let ((__tmp79574 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp79574 _modpath79552_))
                   '#f)))
          (if _$e79555_
              _$e79555_
              (let ((_$e79558_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79552_))))
                (if _$e79558_
                    ((lambda (_path79561_)
                       (let ((_lpath79563_ (load _path79561_)))
                         (let ((__tmp79575 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp79575 _modpath79552_ _lpath79563_))
                         _lpath79563_))
                     _$e79558_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79552_))))))))
    (define load-module__0
      (lambda (_modpath79568_)
        (let ((_reload?79570_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath79568_ _reload?79570_))))
    (define load-module
      (lambda _g79577_
        (let ((_g79576_ (let () (declare (not safe)) (##length _g79577_))))
          (cond ((let () (declare (not safe)) (##fx= _g79576_ 1))
                 (apply (lambda (_modpath79568_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath79568_)))
                        _g79577_))
                ((let () (declare (not safe)) (##fx= _g79576_ 2))
                 (apply (lambda (_modpath79572_ _reload?79573_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath79572_ _reload?79573_)))
                        _g79577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g79577_))))))
    (define find-library-module
      (lambda (_modpath79486_)
        (letrec ((_find-compiled-file79488_
                  (lambda (_npath79540_)
                    (let ((_basepath79542_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79540_ '".o"))))
                      (let _lp79544_ ((_current79546_ '#f) (_n79547_ '1))
                        (let ((_next79549_
                               (let ((__tmp79578 (number->string _n79547_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79542_
                                  __tmp79578))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79549_))
                              (let ((__tmp79579
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79547_ '1))))
                                (declare (not safe))
                                (_lp79544_ _next79549_ __tmp79579))
                              _current79546_))))))
                 (_find-source-file79489_
                  (lambda (_npath79536_)
                    (let ((_spath79538_ (string-append _npath79536_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79538_))
                          _spath79538_
                          '#f)))))
          (let _lp79491_ ((_rest79493_ (current-module-library-path)))
            (let* ((_rest7949479502_ _rest79493_)
                   (_else7949679510_ (lambda () '#f))
                   (_K7949879524_
                    (lambda (_rest79513_ _dir79514_)
                      (let* ((_npath79516_
                              (path-expand
                               _modpath79486_
                               (path-expand _dir79514_)))
                             (_$e79518_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79488_ _npath79516_))))
                        (if _$e79518_
                            (path-normalize _$e79518_)
                            (let ((_$e79521_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79489_ _npath79516_))))
                              (if _$e79521_
                                  (path-normalize _$e79521_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79491_ _rest79513_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7949479502_))
                  (let ((_hd7949979527_
                         (let ()
                           (declare (not safe))
                           (##car _rest7949479502_)))
                        (_tl7950079529_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7949479502_))))
                    (let* ((_dir79532_ _hd7949979527_)
                           (_rest79534_ _tl7950079529_))
                      (declare (not safe))
                      (_K7949879524_ _rest79534_ _dir79532_)))
                  (let () (declare (not safe)) (_else7949679510_))))))))))
