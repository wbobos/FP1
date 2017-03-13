#lang racket

;; (require vlc) didn't work
;; Extensive, soul-wrenching research led to a solution:
;; (require (planet neil/vlc:1:0))
(require (planet neil/vlc:1:0))


;; other VLC commands
;(vlc-url? f)
;(vlc-add f)
;(sleep 10)

;; Creating a play-list from the internet
(define play-list
  (list
   "http://billbobos.com/video/light-seeking.3gp"
   "http://billbobos.com/video/line-following.3gp"
   "http://billbobos.com/video/obstacle-avoiding.3gp"
   "http://billbobos.com/video/perpendicular-wall-traversing-2-state.3gp"
   "http://billbobos.com/video/sonar_sensing.3gp"
   "http://billbobos.com/video/wall-traversing-2-state.3gp"
   "http://billbobos.com/video/wall-traversing-3-state-1.3gp"
   "http://billbobos.com/video/wall-traversing-3-state-2.3gp"
   "http://billbobos.com/video/wall-traversing-3-state-3.3gp"))


;; Adding the play-list to the VLC Playlist
(define (queue plist)
  (cond
    ((null? plist)
      '())
    (else
      (vlc-enqueue (car plist))
      (queue (cdr plist)))))


;; Launch, queue, and play videos from the VLC PLaylist
(start-vlc)
(queue play-list)
(vlc-play)


;; Displays track info
(vlc-get-title)
