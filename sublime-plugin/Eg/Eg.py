# 
# 

import sublime
import sublime_plugin
import threading

#
# to run:
# ./install.bash
# CMD+alt+m (in the editor)
#

class EgCommand(sublime_plugin.TextCommand):

    def run(self, edit):

        # self.view.set_status('Eg', 'plugin RAN')
        # thread = EgApiCall()
        # thread.start()
        # self.thread_result(thread)

        
        #
        # set the 'point' to the start of the first line
        #
        row = 0
        col = 0
        point = self.view.text_point(row, col)
        #
        # set selection to span the line containing the point
        #
        selection_region = self.view.line(point)
        #
        # replace selection
        #
        self.view.replace(edit, selection_region, "# THIS REPLACES FIRST LINE")
            

    def thread_result(self, thread):

        #
        # recurse a lambda to continuously check for status result
        # and write it to status bar
        #

        sublime.set_timeout(lambda: self.thread_result(thread), 10)
        self.view.set_status('Eg', str(thread.result))


class EgHighlightCommand(sublime_plugin.TextCommand):

    def run(self, edit):

        #
        # when a word is highlighted
        #

        view = self.view
        
        for sel in view.sel():

            highlighted_word = view.substr(sel)

            if len(sel):

                #
                # put highlighted word on 2nd line
                #

                line1 = view.line( view.text_point(1, 0) )
                view.replace(edit, line1, "# " + highlighted_word)


# class EgApiCall(threading.Thread):
    
#     def __init__(self):

#         threading.Thread.__init__(self)
#         self.result = 0

#     def loop(self, count):

#         #
#         # loops, incrementing count every 100th of a second
#         # and sets result with text containing the next count
#         # 

#         count += 1
#         self.result = 'number %i into the status bar' % count
#         sublime.set_timeout(lambda: self.loop(count), 10)

#     def run(self):

#         self.loop(1)
