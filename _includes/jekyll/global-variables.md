| Variable | Description |
| --- | --- |
| site | Site wide information + configuration settings from _config.yml. See below for details. |
| page | Page specific information + the front matter. Custom variables set via the front matter will be available here. See below for details. |
| layout | Layout specific information + the front matter. Custom variables set via front matter in layouts will be available here. |
| theme | Theme-gem specific information as defined in the theme's gemspec. Useful for rendering information in the theme demo's "About" page, for example |
| content | In layout files, the rendered content of the Post or Page being wrapped. Not defined in Post or Page files. |
| paginator | When the paginate configuration option is set, this variable becomes available for use. See Pagination for details. |
