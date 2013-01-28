import sublime
import sublime_plugin

class EgCommand(sublime_plugin.TextCommand):

    def run(self, edit):

        self.view.set_status('Eg', 'plugin ran')

