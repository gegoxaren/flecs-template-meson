project ('FLECS_test', 'c',
         default_options : ['c_std=c11'])

r = run_command ('./get_deps.sh')


deps = []

#FLECS
fl = subproject ('flecs')
fl_dep = dependency ('flecs', fallback : ['flecs', 'flecs_dep'])
deps += fl_dep


subdir ('src')

executable ('flecs_test',
  flecs_test_src,
  dependencies: deps
)
