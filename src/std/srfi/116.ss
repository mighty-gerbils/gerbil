;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-116: Immutable list library

(import :std/error
        :std/srfi/9)
(export iq
        ipair ilist xipair ipair* make-ilist ilist-copy ilist-tabulate iiota
        ipair?
        proper-ilist? ilist? dotted-ilist? not-ipair? null-ilist? ilist=
        icar icdr ilist-ref
        ifirst isecond ithird ifourth ififth isixth iseventh ieighth ininth itenth
        icaar icadr icdar icddr
        icaaar icaadr icadar icaddr icdaar icdadr icddar icdddr
        icaaaar icaaadr icaadar icaaddr icadaar icadadr icaddar icadddr
        icdaaar icdaadr icdadar icdaddr icddaar icddadr icdddar icddddr
        icar+icdr itake idrop ilist-tail
        itake-right idrop-right isplit-at ilast last-ipair
        ilength iappend iconcatenate ireverse iappend-reverse
        izip iunzip1 iunzip2 iunzip3 iunzip4 iunzip5
        icount imap ifor-each ifold iunfold ipair-fold ireduce
        ifold-right iunfold-right ipair-fold-right ireduce-right
        iappend-map ipair-for-each ifilter-map imap-in-order
        ifilter ipartition iremove imember imemq imemv
        ifind ifind-tail iany ievery
        ilist-index itake-while idrop-while ispan ibreak
        idelete idelete-duplicates
        iassoc iassq iassv ialist-cons ialist-delete
        replace-icar replace-icdr
        pair->ipair ipair->pair list->ilist ilist->list
        tree->itree itree->tree gtree->itree gtree->tree
        iapply)
(include "srfi-116/ilists-base.scm")
(include "srfi-116/ilists-impl.scm")
