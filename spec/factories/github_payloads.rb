class GithubPayloads

  def self.push(email)
    <<-JSON
    {
       "after":"1481a2de7b2a7d02428ad93446ab166be7793fbb",
       "before":"17c497ccc7cca9c2f735aa07e9e3813060ce9a6a",
       "commits":[
          {
             "added":[

             ],
             "author":{
                "email":"#{email}",
                "name":"Garen Torikian",
                "username":"octokitty"
             },
             "committer":{
                "email":"#{email}",
                "name":"Garen Torikian",
                "username":"octokitty"
             },
             "distinct":true,
             "id":"c441029cf673f84c8b7db52d0a5944ee5c52ff89",
             "message":"Test",
             "modified":[
                "README.md"
             ],
             "removed":[

             ],
             "timestamp":"2013-02-22T13:50:07-08:00",
             "url":"https://github.com/octokitty/testing/commit/c441029cf673f84c8b7db52d0a5944ee5c52ff89"
          },
          {
             "added":[

             ],
             "author":{
                "email":"#{email}",
                "name":"Garen Torikian",
                "username":"octokitty"
             },
             "committer":{
                "email":"#{email}",
                "name":"Garen Torikian",
                "username":"octokitty"
             },
             "distinct":true,
             "id":"36c5f2243ed24de58284a96f2a643bed8c028658",
             "message":"This is me testing the windows client.",
             "modified":[
                "README.md"
             ],
             "removed":[

             ],
             "timestamp":"2013-02-22T14:07:13-08:00",
             "url":"https://github.com/octokitty/testing/commit/36c5f2243ed24de58284a96f2a643bed8c028658"
          },
          {
             "added":[
                "words/madame-bovary.txt"
             ],
             "author":{
                "email":"#{email}",
                "name":"Garen Torikian",
                "username":"octokitty"
             },
             "committer":{
                "email":"#{email}",
                "name":"Garen Torikian",
                "username":"octokitty"
             },
             "distinct":true,
             "id":"1481a2de7b2a7d02428ad93446ab166be7793fbb",
             "message":"Rename madame-bovary.txt to words/madame-bovary.txt",
             "modified":[

             ],
             "removed":[
                "madame-bovary.txt"
             ],
             "timestamp":"2013-03-12T08:14:29-07:00",
             "url":"https://github.com/octokitty/testing/commit/1481a2de7b2a7d02428ad93446ab166be7793fbb"
          }
       ],
       "compare":"https://github.com/octokitty/testing/compare/17c497ccc7cc...1481a2de7b2a",
       "created":false,
       "deleted":false,
       "forced":false,
       "head_commit":{
          "added":[
             "words/madame-bovary.txt"
          ],
          "author":{
             "email":"#{email}",
             "name":"Garen Torikian",
             "username":"octokitty"
          },
          "committer":{
             "email":"#{email}",
             "name":"Garen Torikian",
             "username":"octokitty"
          },
          "distinct":true,
          "id":"1481a2de7b2a7d02428ad93446ab166be7793fbb",
          "message":"Rename madame-bovary.txt to words/madame-bovary.txt",
          "modified":[

          ],
          "removed":[
             "madame-bovary.txt"
          ],
          "timestamp":"2013-03-12T08:14:29-07:00",
          "url":"https://github.com/octokitty/testing/commit/1481a2de7b2a7d02428ad93446ab166be7793fbb"
       },
       "pusher":{
          "name":"none"
       },
       "ref":"refs/heads/master",
       "repository":{
          "created_at":1332977768,
          "description":"",
          "fork":false,
          "forks":0,
          "has_downloads":true,
          "has_issues":true,
          "has_wiki":true,
          "homepage":"",
          "id":3860742,
          "language":"Ruby",
          "master_branch":"master",
          "name":"testing",
          "open_issues":2,
          "owner":{
             "email":"#{email}",
             "name":"octokitty"
          },
          "private":false,
          "pushed_at":1363295520,
          "size":2156,
          "stargazers":1,
          "url":"https://github.com/octokitty/testing",
          "watchers":1
       }
    }
    JSON
  end

  # Created this hook using:
  # curl -i --user stuliston -X POST -d '{"name": "web", "events": ["issues"], "active": true, "config": {"url": "http://leaderboard.hooroo.com/api/github_issue_opened.json", "content_type": "json"}}' https://api.github.com/repos/hooroo/hotels/hooks
  def self.issue_opened
    <<-JSON
      {
         "issue":{
            "number":443,
            "user":{
               "html_url":"https://github.com/stuliston",
               "type":"User",
               "login":"stuliston",
               "repos_url":"https://api.github.com/users/stuliston/repos",
               "url":"https://api.github.com/users/stuliston",
               "events_url":"https://api.github.com/users/stuliston/events{/privacy}",
               "gists_url":"https://api.github.com/users/stuliston/gists{/gist_id}",
               "avatar_url":"https://secure.gravatar.com/avatar/dae3715f6eae05308ff8bd57b1618b2b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
               "subscriptions_url":"https://api.github.com/users/stuliston/subscriptions",
               "id":323187,
               "following_url":"https://api.github.com/users/stuliston/following",
               "organizations_url":"https://api.github.com/users/stuliston/orgs",
               "received_events_url":"https://api.github.com/users/stuliston/received_events",
               "gravatar_id":"dae3715f6eae05308ff8bd57b1618b2b",
               "followers_url":"https://api.github.com/users/stuliston/followers",
               "starred_url":"https://api.github.com/users/stuliston/starred{/owner}{/repo}"
            },
            "html_url":"https://github.com/hooroo/hotels/issues/443",
            "created_at":"2013-04-12T12:34:48Z",
            "state":"open",
            "body":"Some issue body\r\n![dramatic](https://f.cloud.github.com/assets/323187/372778/4bb5f726-a36d-11e2-9512-2e1ba9502c7a.jpg)\r\n",
            "comments_url":"https://api.github.com/repos/hooroo/hotels/issues/443/comments",
            "labels_url":"https://api.github.com/repos/hooroo/hotels/issues/443/labels{/name}",
            "updated_at":"2013-04-12T12:34:48Z",
            "url":"https://api.github.com/repos/hooroo/hotels/issues/443",
            "events_url":"https://api.github.com/repos/hooroo/hotels/issues/443/events",
            "comments":0,
            "title":"Test issue - please ignore",
            "labels":[
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/Data",
                  "name":"Data",
                  "color":"5C883F"
               },
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/IE",
                  "name":"IE",
                  "color":"0b02e1"
               },
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/Prod+Issue%21",
                  "name":"Prod Issue!",
                  "color":"e10c02"
               },
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/Squid",
                  "name":"Squid",
                  "color":"373659"
               }
            ],
            "id":13116946,
            "closed_at":null,
            "pull_request":{
               "patch_url":null,
               "html_url":null,
               "diff_url":null
            },
            "milestone":null,
            "assignee":{
               "html_url":"https://github.com/stuliston",
               "type":"User",
               "login":"stuliston",
               "repos_url":"https://api.github.com/users/stuliston/repos",
               "url":"https://api.github.com/users/stuliston",
               "events_url":"https://api.github.com/users/stuliston/events{/privacy}",
               "gists_url":"https://api.github.com/users/stuliston/gists{/gist_id}",
               "avatar_url":"https://secure.gravatar.com/avatar/dae3715f6eae05308ff8bd57b1618b2b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
               "subscriptions_url":"https://api.github.com/users/stuliston/subscriptions",
               "id":323187,
               "following_url":"https://api.github.com/users/stuliston/following",
               "organizations_url":"https://api.github.com/users/stuliston/orgs",
               "received_events_url":"https://api.github.com/users/stuliston/received_events",
               "gravatar_id":"dae3715f6eae05308ff8bd57b1618b2b",
               "followers_url":"https://api.github.com/users/stuliston/followers",
               "starred_url":"https://api.github.com/users/stuliston/starred{/owner}{/repo}"
            }
         },
         "action":"opened",
         "repository":{
            "compare_url":"https://api.github.com/repos/hooroo/hotels/compare/{base}...{head}",
            "description":"Hooroo, Qantas and Jetstar hotel sites",
            "stargazers_url":"https://api.github.com/repos/hooroo/hotels/stargazers",
            "mirror_url":null,
            "html_url":"https://github.com/hooroo/hotels",
            "teams_url":"https://api.github.com/repos/hooroo/hotels/teams",
            "git_tags_url":"https://api.github.com/repos/hooroo/hotels/git/tags{/sha}",
            "downloads_url":"https://api.github.com/repos/hooroo/hotels/downloads",
            "keys_url":"https://api.github.com/repos/hooroo/hotels/keys{/key_id}",
            "created_at":"2011-05-17T00:59:38Z",
            "languages_url":"https://api.github.com/repos/hooroo/hotels/languages",
            "forks_count":0,
            "trees_url":"https://api.github.com/repos/hooroo/hotels/git/trees{/sha}",
            "comments_url":"https://api.github.com/repos/hooroo/hotels/comments{/number}",
            "git_url":"git://github.com/hooroo/hotels.git",
            "labels_url":"https://api.github.com/repos/hooroo/hotels/labels{/name}",
            "updated_at":"2013-04-12T07:41:03Z",
            "ssh_url":"git@github.com:hooroo/hotels.git",
            "has_issues":true,
            "git_refs_url":"https://api.github.com/repos/hooroo/hotels/git/refs{/sha}",
            "url":"https://api.github.com/repos/hooroo/hotels",
            "archive_url":"https://api.github.com/repos/hooroo/hotels/{archive_format}{/ref}",
            "events_url":"https://api.github.com/repos/hooroo/hotels/events",
            "tags_url":"https://api.github.com/repos/hooroo/hotels/tags{/tag}",
            "pulls_url":"https://api.github.com/repos/hooroo/hotels/pulls{/number}",
            "contents_url":"https://api.github.com/repos/hooroo/hotels/contents/{+path}",
            "git_commits_url":"https://api.github.com/repos/hooroo/hotels/git/commits{/sha}",
            "forks":0,
            "subscription_url":"https://api.github.com/repos/hooroo/hotels/subscription",
            "svn_url":"https://github.com/hooroo/hotels",
            "forks_url":"https://api.github.com/repos/hooroo/hotels/forks",
            "issue_events_url":"https://api.github.com/repos/hooroo/hotels/issues/events{/number}",
            "blobs_url":"https://api.github.com/repos/hooroo/hotels/git/blobs{/sha}",
            "notifications_url":"https://api.github.com/repos/hooroo/hotels/notifications{?since,all,participating}",
            "merges_url":"https://api.github.com/repos/hooroo/hotels/merges",
            "has_downloads":true,
            "milestones_url":"https://api.github.com/repos/hooroo/hotels/milestones{/number}",
            "commits_url":"https://api.github.com/repos/hooroo/hotels/commits{/sha}",
            "statuses_url":"https://api.github.com/repos/hooroo/hotels/statuses/{sha}",
            "full_name":"hooroo/hotels",
            "assignees_url":"https://api.github.com/repos/hooroo/hotels/assignees{/user}",
            "watchers_count":2,
            "open_issues_count":70,
            "has_wiki":true,
            "id":1758526,
            "watchers":2,
            "homepage":"http://hooroo.com",
            "issues_url":"https://api.github.com/repos/hooroo/hotels/issues{/number}",
            "language":"Ruby",
            "contributors_url":"https://api.github.com/repos/hooroo/hotels/contributors",
            "owner":{
               "html_url":"https://github.com/hooroo",
               "type":"Organization",
               "login":"hooroo",
               "repos_url":"https://api.github.com/users/hooroo/repos",
               "url":"https://api.github.com/users/hooroo",
               "events_url":"https://api.github.com/users/hooroo/events{/privacy}",
               "gists_url":"https://api.github.com/users/hooroo/gists{/gist_id}",
               "avatar_url":"https://secure.gravatar.com/avatar/3c25d310b5c66f306e055f088966126f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-org-420.png",
               "subscriptions_url":"https://api.github.com/users/hooroo/subscriptions",
               "id":785479,
               "following_url":"https://api.github.com/users/hooroo/following",
               "organizations_url":"https://api.github.com/users/hooroo/orgs",
               "received_events_url":"https://api.github.com/users/hooroo/received_events",
               "gravatar_id":"3c25d310b5c66f306e055f088966126f",
               "followers_url":"https://api.github.com/users/hooroo/followers",
               "starred_url":"https://api.github.com/users/hooroo/starred{/owner}{/repo}"
            },
            "clone_url":"https://github.com/hooroo/hotels.git",
            "master_branch":"master",
            "name":"hotels",
            "default_branch":"master",
            "branches_url":"https://api.github.com/repos/hooroo/hotels/branches{/branch}",
            "open_issues":70,
            "private":true,
            "fork":false,
            "pushed_at":"2013-04-12T07:41:01Z",
            "size":122236,
            "collaborators_url":"https://api.github.com/repos/hooroo/hotels/collaborators{/collaborator}",
            "issue_comment_url":"https://api.github.com/repos/hooroo/hotels/issues/comments/{number}",
            "subscribers_url":"https://api.github.com/repos/hooroo/hotels/subscribers",
            "hooks_url":"https://api.github.com/repos/hooroo/hotels/hooks"
         },
         "sender":{
            "html_url":"https://github.com/stuliston",
            "type":"User",
            "login":"stuliston",
            "repos_url":"https://api.github.com/users/stuliston/repos",
            "url":"https://api.github.com/users/stuliston",
            "events_url":"https://api.github.com/users/stuliston/events{/privacy}",
            "gists_url":"https://api.github.com/users/stuliston/gists{/gist_id}",
            "avatar_url":"https://secure.gravatar.com/avatar/dae3715f6eae05308ff8bd57b1618b2b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
            "subscriptions_url":"https://api.github.com/users/stuliston/subscriptions",
            "id":323187,
            "following_url":"https://api.github.com/users/stuliston/following",
            "organizations_url":"https://api.github.com/users/stuliston/orgs",
            "received_events_url":"https://api.github.com/users/stuliston/received_events",
            "gravatar_id":"dae3715f6eae05308ff8bd57b1618b2b",
            "followers_url":"https://api.github.com/users/stuliston/followers",
            "starred_url":"https://api.github.com/users/stuliston/starred{/owner}{/repo}"
         }
      }
    JSON
  end

  # Created this hook using:
  # curl -i --user stuliston -X POST -d '{"name": "web", "events": ["issues"], "active": true, "config": {"url": "http://leaderboard.hooroo.com/api/github_issue_closed.json", "content_type": "json"}}' https://api.github.com/repos/hooroo/hotels/hooks
  def self.issue_closed
    <<-JSON
      {
         "issue":{
            "number":443,
            "user":{
               "html_url":"https://github.com/stuliston",
               "type":"User",
               "login":"stuliston",
               "repos_url":"https://api.github.com/users/stuliston/repos",
               "url":"https://api.github.com/users/stuliston",
               "events_url":"https://api.github.com/users/stuliston/events{/privacy}",
               "gists_url":"https://api.github.com/users/stuliston/gists{/gist_id}",
               "avatar_url":"https://secure.gravatar.com/avatar/dae3715f6eae05308ff8bd57b1618b2b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
               "subscriptions_url":"https://api.github.com/users/stuliston/subscriptions",
               "id":323187,
               "following_url":"https://api.github.com/users/stuliston/following",
               "organizations_url":"https://api.github.com/users/stuliston/orgs",
               "received_events_url":"https://api.github.com/users/stuliston/received_events",
               "gravatar_id":"dae3715f6eae05308ff8bd57b1618b2b",
               "followers_url":"https://api.github.com/users/stuliston/followers",
               "starred_url":"https://api.github.com/users/stuliston/starred{/owner}{/repo}"
            },
            "html_url":"https://github.com/hooroo/hotels/issues/443",
            "created_at":"2013-04-12T12:34:48Z",
            "state":"open",
            "body":"Some issue body\r\n![dramatic](https://f.cloud.github.com/assets/323187/372778/4bb5f726-a36d-11e2-9512-2e1ba9502c7a.jpg)\r\n",
            "comments_url":"https://api.github.com/repos/hooroo/hotels/issues/443/comments",
            "labels_url":"https://api.github.com/repos/hooroo/hotels/issues/443/labels{/name}",
            "updated_at":"2013-04-12T12:34:48Z",
            "url":"https://api.github.com/repos/hooroo/hotels/issues/443",
            "events_url":"https://api.github.com/repos/hooroo/hotels/issues/443/events",
            "comments":0,
            "title":"Test issue - please ignore",
            "labels":[
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/Data",
                  "name":"Data",
                  "color":"5C883F"
               },
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/IE",
                  "name":"IE",
                  "color":"0b02e1"
               },
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/Prod+Issue%21",
                  "name":"Prod Issue!",
                  "color":"e10c02"
               },
               {
                  "url":"https://api.github.com/repos/hooroo/hotels/labels/Squid",
                  "name":"Squid",
                  "color":"373659"
               }
            ],
            "id":13116946,
            "closed_at":null,
            "pull_request":{
               "patch_url":null,
               "html_url":null,
               "diff_url":null
            },
            "milestone":null,
            "assignee":{
               "html_url":"https://github.com/stuliston",
               "type":"User",
               "login":"stuliston",
               "repos_url":"https://api.github.com/users/stuliston/repos",
               "url":"https://api.github.com/users/stuliston",
               "events_url":"https://api.github.com/users/stuliston/events{/privacy}",
               "gists_url":"https://api.github.com/users/stuliston/gists{/gist_id}",
               "avatar_url":"https://secure.gravatar.com/avatar/dae3715f6eae05308ff8bd57b1618b2b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
               "subscriptions_url":"https://api.github.com/users/stuliston/subscriptions",
               "id":323187,
               "following_url":"https://api.github.com/users/stuliston/following",
               "organizations_url":"https://api.github.com/users/stuliston/orgs",
               "received_events_url":"https://api.github.com/users/stuliston/received_events",
               "gravatar_id":"dae3715f6eae05308ff8bd57b1618b2b",
               "followers_url":"https://api.github.com/users/stuliston/followers",
               "starred_url":"https://api.github.com/users/stuliston/starred{/owner}{/repo}"
            }
         },
         "action":"opened",
         "repository":{
            "compare_url":"https://api.github.com/repos/hooroo/hotels/compare/{base}...{head}",
            "description":"Hooroo, Qantas and Jetstar hotel sites",
            "stargazers_url":"https://api.github.com/repos/hooroo/hotels/stargazers",
            "mirror_url":null,
            "html_url":"https://github.com/hooroo/hotels",
            "teams_url":"https://api.github.com/repos/hooroo/hotels/teams",
            "git_tags_url":"https://api.github.com/repos/hooroo/hotels/git/tags{/sha}",
            "downloads_url":"https://api.github.com/repos/hooroo/hotels/downloads",
            "keys_url":"https://api.github.com/repos/hooroo/hotels/keys{/key_id}",
            "created_at":"2011-05-17T00:59:38Z",
            "languages_url":"https://api.github.com/repos/hooroo/hotels/languages",
            "forks_count":0,
            "trees_url":"https://api.github.com/repos/hooroo/hotels/git/trees{/sha}",
            "comments_url":"https://api.github.com/repos/hooroo/hotels/comments{/number}",
            "git_url":"git://github.com/hooroo/hotels.git",
            "labels_url":"https://api.github.com/repos/hooroo/hotels/labels{/name}",
            "updated_at":"2013-04-12T07:41:03Z",
            "ssh_url":"git@github.com:hooroo/hotels.git",
            "has_issues":true,
            "git_refs_url":"https://api.github.com/repos/hooroo/hotels/git/refs{/sha}",
            "url":"https://api.github.com/repos/hooroo/hotels",
            "archive_url":"https://api.github.com/repos/hooroo/hotels/{archive_format}{/ref}",
            "events_url":"https://api.github.com/repos/hooroo/hotels/events",
            "tags_url":"https://api.github.com/repos/hooroo/hotels/tags{/tag}",
            "pulls_url":"https://api.github.com/repos/hooroo/hotels/pulls{/number}",
            "contents_url":"https://api.github.com/repos/hooroo/hotels/contents/{+path}",
            "git_commits_url":"https://api.github.com/repos/hooroo/hotels/git/commits{/sha}",
            "forks":0,
            "subscription_url":"https://api.github.com/repos/hooroo/hotels/subscription",
            "svn_url":"https://github.com/hooroo/hotels",
            "forks_url":"https://api.github.com/repos/hooroo/hotels/forks",
            "issue_events_url":"https://api.github.com/repos/hooroo/hotels/issues/events{/number}",
            "blobs_url":"https://api.github.com/repos/hooroo/hotels/git/blobs{/sha}",
            "notifications_url":"https://api.github.com/repos/hooroo/hotels/notifications{?since,all,participating}",
            "merges_url":"https://api.github.com/repos/hooroo/hotels/merges",
            "has_downloads":true,
            "milestones_url":"https://api.github.com/repos/hooroo/hotels/milestones{/number}",
            "commits_url":"https://api.github.com/repos/hooroo/hotels/commits{/sha}",
            "statuses_url":"https://api.github.com/repos/hooroo/hotels/statuses/{sha}",
            "full_name":"hooroo/hotels",
            "assignees_url":"https://api.github.com/repos/hooroo/hotels/assignees{/user}",
            "watchers_count":2,
            "open_issues_count":70,
            "has_wiki":true,
            "id":1758526,
            "watchers":2,
            "homepage":"http://hooroo.com",
            "issues_url":"https://api.github.com/repos/hooroo/hotels/issues{/number}",
            "language":"Ruby",
            "contributors_url":"https://api.github.com/repos/hooroo/hotels/contributors",
            "owner":{
               "html_url":"https://github.com/hooroo",
               "type":"Organization",
               "login":"hooroo",
               "repos_url":"https://api.github.com/users/hooroo/repos",
               "url":"https://api.github.com/users/hooroo",
               "events_url":"https://api.github.com/users/hooroo/events{/privacy}",
               "gists_url":"https://api.github.com/users/hooroo/gists{/gist_id}",
               "avatar_url":"https://secure.gravatar.com/avatar/3c25d310b5c66f306e055f088966126f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-org-420.png",
               "subscriptions_url":"https://api.github.com/users/hooroo/subscriptions",
               "id":785479,
               "following_url":"https://api.github.com/users/hooroo/following",
               "organizations_url":"https://api.github.com/users/hooroo/orgs",
               "received_events_url":"https://api.github.com/users/hooroo/received_events",
               "gravatar_id":"3c25d310b5c66f306e055f088966126f",
               "followers_url":"https://api.github.com/users/hooroo/followers",
               "starred_url":"https://api.github.com/users/hooroo/starred{/owner}{/repo}"
            },
            "clone_url":"https://github.com/hooroo/hotels.git",
            "master_branch":"master",
            "name":"hotels",
            "default_branch":"master",
            "branches_url":"https://api.github.com/repos/hooroo/hotels/branches{/branch}",
            "open_issues":70,
            "private":true,
            "fork":false,
            "pushed_at":"2013-04-12T07:41:01Z",
            "size":122236,
            "collaborators_url":"https://api.github.com/repos/hooroo/hotels/collaborators{/collaborator}",
            "issue_comment_url":"https://api.github.com/repos/hooroo/hotels/issues/comments/{number}",
            "subscribers_url":"https://api.github.com/repos/hooroo/hotels/subscribers",
            "hooks_url":"https://api.github.com/repos/hooroo/hotels/hooks"
         },
         "sender":{
            "html_url":"https://github.com/stuliston",
            "type":"User",
            "login":"stuliston",
            "repos_url":"https://api.github.com/users/stuliston/repos",
            "url":"https://api.github.com/users/stuliston",
            "events_url":"https://api.github.com/users/stuliston/events{/privacy}",
            "gists_url":"https://api.github.com/users/stuliston/gists{/gist_id}",
            "avatar_url":"https://secure.gravatar.com/avatar/dae3715f6eae05308ff8bd57b1618b2b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
            "subscriptions_url":"https://api.github.com/users/stuliston/subscriptions",
            "id":323187,
            "following_url":"https://api.github.com/users/stuliston/following",
            "organizations_url":"https://api.github.com/users/stuliston/orgs",
            "received_events_url":"https://api.github.com/users/stuliston/received_events",
            "gravatar_id":"dae3715f6eae05308ff8bd57b1618b2b",
            "followers_url":"https://api.github.com/users/stuliston/followers",
            "starred_url":"https://api.github.com/users/stuliston/starred{/owner}{/repo}"
         }
      }
    JSON
  end

end
