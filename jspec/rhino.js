
load('/Users/bkaney/.rvm/gems/ruby-1.9.1-p378/gems/jspec-4.2.0/lib/jspec.js')
load('/Users/bkaney/.rvm/gems/ruby-1.9.1-p378/gems/jspec-4.2.0/lib/jspec.xhr.js')
load('jspec/unit/spec.helper.js')

JSpec
.exec('jspec/unit/spec.js')
.run({ reporter: JSpec.reporters.Terminal, fixturePath: 'jspec/fixtures' })
.report()
