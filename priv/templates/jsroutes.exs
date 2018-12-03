/*eslint-disable*/
// jshint ignore: start
/** <% import PhoenixJsroutes %>
 * DO NOT MODIFY!
 * This file was automatically generated and will be overwritten in the next build
 */


export default {
    <%= for route <- routes do %>
      <% fn_name = function_name(route) <> "Path"%>
      <%= fn_name %>: function <%= fn_name %>(<%= function_params(route) %>) {
        return <%= function_body(route) %>;
      },
      <% fn_name = function_name(route) <> "Url"%>
      <%= fn_name %>: function <%= fn_name %>(<%= function_params(route) %>) {
        return <%= function_body(route, url) %>;
      },
    <% end %>
};
