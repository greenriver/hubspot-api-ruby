=begin
#Files

#Upload and manage files.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Files
    module Files
      class FilesApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Delete file
        # Delete file by ID
        # @param file_id [String] File ID to delete
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(file_id, opts = {})
          archive_with_http_info(file_id, opts)
          nil
        end

        # Delete file
        # Delete file by ID
        # @param file_id [String] File ID to delete
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(file_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.archive ...'
          end
          # verify the required parameter 'file_id' is set
          if @api_client.config.client_side_validation && file_id.nil?
            fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.archive"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && file_id !~ pattern
            fail ArgumentError, "invalid value for 'file_id' when calling FilesApi.archive, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/files/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # GDPR delete
        # GDRP delete file
        # @param file_id [String] ID of file to GDPR delete
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive_gdpr(file_id, opts = {})
          archive_gdpr_with_http_info(file_id, opts)
          nil
        end

        # GDPR delete
        # GDRP delete file
        # @param file_id [String] ID of file to GDPR delete
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_gdpr_with_http_info(file_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.archive_gdpr ...'
          end
          # verify the required parameter 'file_id' is set
          if @api_client.config.client_side_validation && file_id.nil?
            fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.archive_gdpr"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && file_id !~ pattern
            fail ArgumentError, "invalid value for 'file_id' when calling FilesApi.archive_gdpr, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/files/{fileId}/gdpr-delete'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#archive_gdpr\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Check import status.
        # Check the status of requested import.
        # @param task_id [String] Import by URL task ID
        # @param [Hash] opts the optional parameters
        # @return [FileActionResponse]
        def check_import(task_id, opts = {})
          data, _status_code, _headers = check_import_with_http_info(task_id, opts)
          data
        end

        # Check import status.
        # Check the status of requested import.
        # @param task_id [String] Import by URL task ID
        # @param [Hash] opts the optional parameters
        # @return [Array<(FileActionResponse, Integer, Hash)>] FileActionResponse data, response status code and response headers
        def check_import_with_http_info(task_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.check_import ...'
          end
          # verify the required parameter 'task_id' is set
          if @api_client.config.client_side_validation && task_id.nil?
            fail ArgumentError, "Missing the required parameter 'task_id' when calling FilesApi.check_import"
          end
          # resource path
          local_var_path = '/files/v3/files/import-from-url/async/tasks/{taskId}/status'.sub('{' + 'taskId' + '}', CGI.escape(task_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'FileActionResponse' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#check_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Search files
        # Search through files in the file manager. Does not display hidden or archived files.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Desired file properties in the return object.
        # @option opts [String] :after The maximum offset of items for a given search is 10000. Narrow your search down if you are reaching this limit.
        # @option opts [String] :before 
        # @option opts [Integer] :limit Number of items to return. Maximum limit is 100.
        # @option opts [Array<String>] :sort Sort files by a given field.
        # @option opts [String] :id Search files by given ID.
        # @option opts [DateTime] :created_at Search files by time of creation.
        # @option opts [DateTime] :created_at_lte 
        # @option opts [DateTime] :created_at_gte 
        # @option opts [DateTime] :updated_at Search files by time of latest updated.
        # @option opts [DateTime] :updated_at_lte 
        # @option opts [DateTime] :updated_at_gte 
        # @option opts [String] :name Search for files containing the given name.
        # @option opts [String] :path Search files by path.
        # @option opts [Integer] :parent_folder_id Search files within given folder ID.
        # @option opts [Integer] :size Query by file size.
        # @option opts [Integer] :height Search files by height of image or video.
        # @option opts [Integer] :width Search files by width of image or video.
        # @option opts [String] :encoding Search files with specified encoding.
        # @option opts [String] :type Filter by provided file type.
        # @option opts [String] :extension Search files by given extension.
        # @option opts [String] :url Search for given URL
        # @option opts [Boolean] :is_usable_in_content If true shows files that have been marked to be used in new content. It false shows files that should not be used in new content.
        # @option opts [Boolean] :allows_anonymous_access If &#39;true&#39; will show private files; if &#39;false&#39; will show public files
        # @return [CollectionResponseFile]
        def do_search(opts = {})
          data, _status_code, _headers = do_search_with_http_info(opts)
          data
        end

        # Search files
        # Search through files in the file manager. Does not display hidden or archived files.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Desired file properties in the return object.
        # @option opts [String] :after The maximum offset of items for a given search is 10000. Narrow your search down if you are reaching this limit.
        # @option opts [String] :before 
        # @option opts [Integer] :limit Number of items to return. Maximum limit is 100.
        # @option opts [Array<String>] :sort Sort files by a given field.
        # @option opts [String] :id Search files by given ID.
        # @option opts [DateTime] :created_at Search files by time of creation.
        # @option opts [DateTime] :created_at_lte 
        # @option opts [DateTime] :created_at_gte 
        # @option opts [DateTime] :updated_at Search files by time of latest updated.
        # @option opts [DateTime] :updated_at_lte 
        # @option opts [DateTime] :updated_at_gte 
        # @option opts [String] :name Search for files containing the given name.
        # @option opts [String] :path Search files by path.
        # @option opts [Integer] :parent_folder_id Search files within given folder ID.
        # @option opts [Integer] :size Query by file size.
        # @option opts [Integer] :height Search files by height of image or video.
        # @option opts [Integer] :width Search files by width of image or video.
        # @option opts [String] :encoding Search files with specified encoding.
        # @option opts [String] :type Filter by provided file type.
        # @option opts [String] :extension Search files by given extension.
        # @option opts [String] :url Search for given URL
        # @option opts [Boolean] :is_usable_in_content If true shows files that have been marked to be used in new content. It false shows files that should not be used in new content.
        # @option opts [Boolean] :allows_anonymous_access If &#39;true&#39; will show private files; if &#39;false&#39; will show public files
        # @return [Array<(CollectionResponseFile, Integer, Hash)>] CollectionResponseFile data, response status code and response headers
        def do_search_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.do_search ...'
          end
          # resource path
          local_var_path = '/files/v3/files/search'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
          query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?
          query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
          query_params[:'createdAt'] = opts[:'created_at'] if !opts[:'created_at'].nil?
          query_params[:'createdAtLte'] = opts[:'created_at_lte'] if !opts[:'created_at_lte'].nil?
          query_params[:'createdAtGte'] = opts[:'created_at_gte'] if !opts[:'created_at_gte'].nil?
          query_params[:'updatedAt'] = opts[:'updated_at'] if !opts[:'updated_at'].nil?
          query_params[:'updatedAtLte'] = opts[:'updated_at_lte'] if !opts[:'updated_at_lte'].nil?
          query_params[:'updatedAtGte'] = opts[:'updated_at_gte'] if !opts[:'updated_at_gte'].nil?
          query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
          query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
          query_params[:'parentFolderId'] = opts[:'parent_folder_id'] if !opts[:'parent_folder_id'].nil?
          query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
          query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
          query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
          query_params[:'encoding'] = opts[:'encoding'] if !opts[:'encoding'].nil?
          query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
          query_params[:'extension'] = opts[:'extension'] if !opts[:'extension'].nil?
          query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?
          query_params[:'isUsableInContent'] = opts[:'is_usable_in_content'] if !opts[:'is_usable_in_content'].nil?
          query_params[:'allowsAnonymousAccess'] = opts[:'allows_anonymous_access'] if !opts[:'allows_anonymous_access'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'CollectionResponseFile' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#do_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get file.
        # Get file by ID.
        # @param file_id [String] Id of the desired file.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties 
        # @return [File]
        def get_by_id(file_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(file_id, opts)
          data
        end

        # Get file.
        # Get file by ID.
        # @param file_id [String] Id of the desired file.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties 
        # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
        def get_by_id_with_http_info(file_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.get_by_id ...'
          end
          # verify the required parameter 'file_id' is set
          if @api_client.config.client_side_validation && file_id.nil?
            fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_by_id"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && file_id !~ pattern
            fail ArgumentError, "invalid value for 'file_id' when calling FilesApi.get_by_id, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/files/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'HubspotFile' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get signed URL to access private file.
        # Generates signed URL that allows temporary access to a private file.
        # @param file_id [String] ID of file.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :size For image files. This will resize the image to the desired size before sharing. Does not affect the original file, just the file served by this signed URL.
        # @option opts [Integer] :expiration_seconds How long in seconds the link will provide access to the file.
        # @option opts [Boolean] :upscale If size is provided, this will upscale the image to fit the size dimensions.
        # @return [SignedUrl]
        def get_signed_url(file_id, opts = {})
          data, _status_code, _headers = get_signed_url_with_http_info(file_id, opts)
          data
        end

        # Get signed URL to access private file.
        # Generates signed URL that allows temporary access to a private file.
        # @param file_id [String] ID of file.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :size For image files. This will resize the image to the desired size before sharing. Does not affect the original file, just the file served by this signed URL.
        # @option opts [Integer] :expiration_seconds How long in seconds the link will provide access to the file.
        # @option opts [Boolean] :upscale If size is provided, this will upscale the image to fit the size dimensions.
        # @return [Array<(SignedUrl, Integer, Hash)>] SignedUrl data, response status code and response headers
        def get_signed_url_with_http_info(file_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.get_signed_url ...'
          end
          # verify the required parameter 'file_id' is set
          if @api_client.config.client_side_validation && file_id.nil?
            fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_signed_url"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && file_id !~ pattern
            fail ArgumentError, "invalid value for 'file_id' when calling FilesApi.get_signed_url, must conform to the pattern #{pattern}."
          end

          allowable_values = ["thumb", "icon", "medium", "preview"]
          if @api_client.config.client_side_validation && opts[:'size'] && !allowable_values.include?(opts[:'size'])
            fail ArgumentError, "invalid value for \"size\", must be one of #{allowable_values}"
          end
          # resource path
          local_var_path = '/files/v3/files/{fileId}/signed-url'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
          query_params[:'expirationSeconds'] = opts[:'expiration_seconds'] if !opts[:'expiration_seconds'].nil?
          query_params[:'upscale'] = opts[:'upscale'] if !opts[:'upscale'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'SignedUrl' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#get_signed_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Import a file from a URL into the file manager.
        # Asynchronously imports the file at the given URL into the file manager.
        # @param import_from_url_input [ImportFromUrlInput] 
        # @param [Hash] opts the optional parameters
        # @return [ImportFromUrlTaskLocator]
        def import_from_url(import_from_url_input, opts = {})
          data, _status_code, _headers = import_from_url_with_http_info(import_from_url_input, opts)
          data
        end

        # Import a file from a URL into the file manager.
        # Asynchronously imports the file at the given URL into the file manager.
        # @param import_from_url_input [ImportFromUrlInput] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(ImportFromUrlTaskLocator, Integer, Hash)>] ImportFromUrlTaskLocator data, response status code and response headers
        def import_from_url_with_http_info(import_from_url_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.import_from_url ...'
          end
          # verify the required parameter 'import_from_url_input' is set
          if @api_client.config.client_side_validation && import_from_url_input.nil?
            fail ArgumentError, "Missing the required parameter 'import_from_url_input' when calling FilesApi.import_from_url"
          end
          # resource path
          local_var_path = '/files/v3/files/import-from-url/async'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(import_from_url_input) 

          # return_type
          return_type = opts[:return_type] || 'ImportFromUrlTaskLocator' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#import_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Replace file.
        # Replace existing file data with new file data. Can be used to change image content without having to upload a new file and update all references.
        # @param file_id [String] Id of the desired file.
        # @param [Hash] opts the optional parameters
        # @option opts [File] :file File data that will replace existing file in the file manager.
        # @option opts [String] :charset_hunch Character set of given file data.
        # @option opts [String] :options JSON String representing FileReplaceOptions
        # @return [File]
        def replace(file_id, opts = {})
          data, _status_code, _headers = replace_with_http_info(file_id, opts)
          data
        end

        # Replace file.
        # Replace existing file data with new file data. Can be used to change image content without having to upload a new file and update all references.
        # @param file_id [String] Id of the desired file.
        # @param [Hash] opts the optional parameters
        # @option opts [File] :file File data that will replace existing file in the file manager.
        # @option opts [String] :charset_hunch Character set of given file data.
        # @option opts [String] :options JSON String representing FileReplaceOptions
        # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
        def replace_with_http_info(file_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.replace ...'
          end
          # verify the required parameter 'file_id' is set
          if @api_client.config.client_side_validation && file_id.nil?
            fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.replace"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && file_id !~ pattern
            fail ArgumentError, "invalid value for 'file_id' when calling FilesApi.replace, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/files/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

          # form parameters
          form_params = opts[:form_params] || {}
          form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
          form_params['charsetHunch'] = opts[:'charset_hunch'] if !opts[:'charset_hunch'].nil?
          form_params['options'] = opts[:'options'] if !opts[:'options'].nil?

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'HubspotFile' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # update file properties
        # Update properties of file by ID.
        # @param file_id [String] ID of file to update
        # @param file_update_input [FileUpdateInput] Options to update.
        # @param [Hash] opts the optional parameters
        # @return [File]
        def update_properties(file_id, file_update_input, opts = {})
          data, _status_code, _headers = update_properties_with_http_info(file_id, file_update_input, opts)
          data
        end

        # update file properties
        # Update properties of file by ID.
        # @param file_id [String] ID of file to update
        # @param file_update_input [FileUpdateInput] Options to update.
        # @param [Hash] opts the optional parameters
        # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
        def update_properties_with_http_info(file_id, file_update_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.update_properties ...'
          end
          # verify the required parameter 'file_id' is set
          if @api_client.config.client_side_validation && file_id.nil?
            fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.update_properties"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && file_id !~ pattern
            fail ArgumentError, "invalid value for 'file_id' when calling FilesApi.update_properties, must conform to the pattern #{pattern}."
          end

          # verify the required parameter 'file_update_input' is set
          if @api_client.config.client_side_validation && file_update_input.nil?
            fail ArgumentError, "Missing the required parameter 'file_update_input' when calling FilesApi.update_properties"
          end
          # resource path
          local_var_path = '/files/v3/files/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(file_update_input) 

          # return_type
          return_type = opts[:return_type] || 'HubspotFile' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#update_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Upload file
        # Upload a single file with content specified in request body.
        # @param [Hash] opts the optional parameters
        # @option opts [File] :file File to be uploaded.
        # @option opts [String] :folder_id Either &#39;folderId&#39; or &#39;folderPath&#39; is required. folderId is the ID of the folder the file will be uploaded to.
        # @option opts [String] :folder_path Either &#39;folderPath&#39; or &#39;folderId&#39; is required. This field represents the destination folder path for the uploaded file. If a path doesn&#39;t exist, the system will try to create one.
        # @option opts [String] :file_name Desired name for the uploaded file.
        # @option opts [String] :charset_hunch Character set of the uploaded file.
        # @option opts [String] :options JSON string representing FileUploadOptions.
        # @return [File]
        def upload(opts = {})
          data, _status_code, _headers = upload_with_http_info(opts)
          data
        end

        # Upload file
        # Upload a single file with content specified in request body.
        # @param [Hash] opts the optional parameters
        # @option opts [File] :file File to be uploaded.
        # @option opts [String] :folder_id Either &#39;folderId&#39; or &#39;folderPath&#39; is required. folderId is the ID of the folder the file will be uploaded to.
        # @option opts [String] :folder_path Either &#39;folderPath&#39; or &#39;folderId&#39; is required. This field represents the destination folder path for the uploaded file. If a path doesn&#39;t exist, the system will try to create one.
        # @option opts [String] :file_name Desired name for the uploaded file.
        # @option opts [String] :charset_hunch Character set of the uploaded file.
        # @option opts [String] :options JSON string representing FileUploadOptions.
        # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
        def upload_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FilesApi.upload ...'
          end
          # resource path
          local_var_path = '/files/v3/files'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

          # form parameters
          form_params = opts[:form_params] || {}
          form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
          form_params['folderId'] = opts[:'folder_id'] if !opts[:'folder_id'].nil?
          form_params['folderPath'] = opts[:'folder_path'] if !opts[:'folder_path'].nil?
          form_params['fileName'] = opts[:'file_name'] if !opts[:'file_name'].nil?
          form_params['charsetHunch'] = opts[:'charset_hunch'] if !opts[:'charset_hunch'].nil?
          form_params['options'] = opts[:'options'] if !opts[:'options'].nil?

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'HubspotFile' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2_legacy']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FilesApi#upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
