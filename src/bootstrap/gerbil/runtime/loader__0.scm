(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707773925)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69542_ _reload?69543_)
        (let ((_$e69545_
               (if (let () (declare (not safe)) (not _reload?69543_))
                   (let ((__tmp74132 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp74132 _modpath69542_ '#f))
                   '#f)))
          (if _$e69545_
              _$e69545_
              (let ((_$e69548_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69542_))))
                (if _$e69548_
                    ((lambda (_path69551_)
                       (let ((_lpath69553_ (load _path69551_)))
                         (let ((__tmp74133 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp74133 _modpath69542_ _lpath69553_))
                         _lpath69553_))
                     _$e69548_)
                    (error '"module not found" _modpath69542_)))))))
    (define load-module__0
      (lambda (_modpath69558_)
        (let ((_reload?69560_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69558_ _reload?69560_))))
    (define load-module
      (lambda _g74135_
        (let ((_g74134_ (let () (declare (not safe)) (##length _g74135_))))
          (cond ((let () (declare (not safe)) (##fx= _g74134_ 1))
                 (apply (lambda (_modpath69558_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69558_)))
                        _g74135_))
                ((let () (declare (not safe)) (##fx= _g74134_ 2))
                 (apply (lambda (_modpath69562_ _reload?69563_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69562_ _reload?69563_)))
                        _g74135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g74135_))))))
    (define find-library-module
      (lambda (_modpath69476_)
        (letrec ((_find-compiled-file69478_
                  (lambda (_npath69530_)
                    (let ((_basepath69532_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69530_ '".o"))))
                      (let _lp69534_ ((_current69536_ '#f) (_n69537_ '1))
                        (let ((_next69539_
                               (let ((__tmp74136 (number->string _n69537_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69532_
                                  __tmp74136))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69539_))
                              (let ((__tmp74137
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69537_ '1))))
                                (declare (not safe))
                                (_lp69534_ _next69539_ __tmp74137))
                              _current69536_))))))
                 (_find-source-file69479_
                  (lambda (_npath69526_)
                    (let ((_spath69528_ (string-append _npath69526_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69528_))
                          _spath69528_
                          '#f)))))
          (let _lp69481_ ((_rest69483_ (current-module-library-path)))
            (let* ((_rest6948469492_ _rest69483_)
                   (_else6948669500_ (lambda () '#f))
                   (_K6948869514_
                    (lambda (_rest69503_ _dir69504_)
                      (let* ((_npath69506_
                              (path-expand
                               _modpath69476_
                               (path-expand _dir69504_)))
                             (_$e69508_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69478_ _npath69506_))))
                        (if _$e69508_
                            (path-normalize _$e69508_)
                            (let ((_$e69511_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69479_ _npath69506_))))
                              (if _$e69511_
                                  (path-normalize _$e69511_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69481_ _rest69503_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6948469492_))
                  (let ((_hd6948969517_
                         (let ()
                           (declare (not safe))
                           (##car _rest6948469492_)))
                        (_tl6949069519_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6948469492_))))
                    (let* ((_dir69522_ _hd6948969517_)
                           (_rest69524_ _tl6949069519_))
                      (declare (not safe))
                      (_K6948869514_ _rest69524_ _dir69522_)))
                  (let () (declare (not safe)) (_else6948669500_))))))))))
