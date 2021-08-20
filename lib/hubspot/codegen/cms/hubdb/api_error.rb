=begin
#HubDB endpoints

#HubDB is a relational data store that presents data as rows, columns, and cells in a table, much like a spreadsheet. HubDB tables can be added or modified [in the HubSpot CMS](https://knowledge.hubspot.com/cos-general/how-to-edit-hubdb-tables), but you can also use the API endpoints documented here. For more information on HubDB tables and using their data on a HubSpot site, see the [CMS developers site](https://designers.hubspot.com/docs/tools/hubdb). You can also see the [documentation for dynamic pages](https://designers.hubspot.com/docs/tutorials/how-to-build-dynamic-pages-with-hubdb) for more details about the `useForPages` field.  HubDB tables support `draft` and `published` versions. This allows you to update data in the table, either for testing or to allow for a manual approval process, without affecting any live pages using the existing data. Draft data can be reviewed, and published by a user working in HubSpot or published via the API. Draft data can also be discarded, allowing users to go back to the published version of the data without disrupting it. If a table is set to be `allowed for public access`, you can access the published version of the table and rows without any authentication by specifying the portal id via the query parameter `portalId`.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

module Hubspot
  module Cms
    module Hubdb
      class ApiError < StandardError
        attr_reader :code, :response_headers, :response_body

        # Usage examples:
        #   ApiError.new
        #   ApiError.new("message")
        #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
        #   ApiError.new(:code => 404, :message => "Not Found")
        def initialize(arg = nil)
          if arg.is_a? Hash
            if arg.key?(:message) || arg.key?('message')
              super(arg[:message] || arg['message'])
            else
              super arg
            end

            arg.each do |k, v|
              instance_variable_set "@#{k}", v
            end
          else
            super arg
          end
        end

        # Override to_s to display a friendly error message
        def to_s
          message
        end

        def message
          if @message.nil?
            msg = "Error message: the server returns an error"
          else
            msg = @message
          end

          msg += "\nHTTP status code: #{code}" if code
          msg += "\nResponse headers: #{response_headers}" if response_headers
          msg += "\nResponse body: #{response_body}" if response_body

          msg
        end
      end
    end
  end
end
