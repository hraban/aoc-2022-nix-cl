;; Copyright © 2022  Hraban Luyat
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU Affero General Public License as published
;; by the Free Software Foundation, version 3 of the License.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU Affero General Public License for more details.
;;
;; You should have received a copy of the GNU Affero General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

(defpackage #:aoc-2022x/days/day1
  (:use #:cl #:arrow-macros
        #:aoc-2022x/days/utils)
  (:local-nicknames (#:clu #:cl-utilities))
  (:export #:day1))

(in-package #:aoc-2022x/days/day1)

(defun day1 (&rest args)
  (->> (read-lines)
       (mapcar #'to-int)
       (clu:split-sequence nil)
       (mapcar #'sum)
       (reduce #'max)
       (format T "~A~%")))