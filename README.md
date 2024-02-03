# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...





<table>
    <thead>
            <tr>
                <th>TITLE</th>
                <th>DESCRIPTION</th>
                <th colspan='3'>ACTIONS</th>
            </tr>
 </thead>
    <tbody>
        <% @articles.each do |article| %>
                                            
            <tr>
                <td> <%= article.title %> </td>
                <td> <%= article.description %></td>
                <td> <%= link_to "show", article_path(article) %></td> 
                <td> <%= link_to "edit", edit_article_path(article) %> </td>
                <td> <%= link_to "Delete", article_path(article), data: { turbo_method: :delete, turbo_confirm: "are you sure" } %> </td>
                
            </tr>
        <% end %> 
     
 </tbody>


</table>
<%= link_to "Create new article", new_article_path %> | 
<%= link_to "home", home_path %>



 <%= link_to "DELETE", article_path(article), data: { turbo_method: :delete, turbo_confirm: "are you sure" }, class: "btn btn-danger" %>