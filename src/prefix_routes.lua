local PrefixRoute = {
	api = '/api',
	auth = '/auth',

	__index = function(key)
		error(string.format('the prefix: "%s" is not set in PrefixRoute', key))
	end
}

function PrefixRoute:add(prefix, path, fn)
	return PrefixRoute[prefix] .. path, fn
end

return PrefixRoute
