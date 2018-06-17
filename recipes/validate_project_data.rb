fail ArgumentError, "Project name must be set" if node['project']['name'] == "test"
fail ArgumentError, "Project domain must be set" if node['project']['domain'] == "test.ru"
