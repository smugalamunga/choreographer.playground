module github.com/smugalamunga/choreographer.playground

go 1.16

require (
	github.com/smugalamunga/location.playground v0.0.0-20210629120624-9ecb11302f74 // indirect
	github.com/smugalamunga/media.playground v0.0.0-20210527133907-e7706af11ed0 // indirect
	github.com/smugalamunga/profile.playground v0.0.0-20210525125929-7511c1d9ebad // indirect
	github.com/smugalamunga/user.playground v0.0.0-20210525125957-7549d5b36355 // indirect
)

replace github.com/smugalamunga/user.playground => ../user.playground

replace github.com/smugalamunga/location.playground => ../location.playground

replace github.com/smugalamunga/profile.playground => ../profile.playground

replace github.com/smugalamunga/media.playground => ../media.playground
