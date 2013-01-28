import sublime
import sublime_plugin
import threading

class EgCommand(sublime_plugin.TextCommand):

    def run(self, edit):

        self.view.set_status('Eg', 'plugin RAN')
        thread = EgApiCall()
        thread.start()
        self.thread_result(thread)

    def thread_result(self, thread):

        #
        # recurse a lambda to continuously check for status result
        # and write it to status bar
        #

        sublime.set_timeout(lambda: self.thread_result(thread), 10)
        self.view.set_status('Eg', str(thread.result))


class EgApiCall(threading.Thread):
    
    def __init__(self):

        threading.Thread.__init__(self)
        self.result = 0

    def loop(self, count):

        #
        # loops, incrementing count every 100th of a second
        # and sets result with text containing the next count
        # 

        count += 1
        self.result = 'number %i into the status bar' % count
        sublime.set_timeout(lambda: self.loop(count), 10)

    def run(self):

        self.loop(1)
