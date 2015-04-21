Marijuana Policy Tracker App
-------

With this app, users can:

[] Sign up/sign in
[] Create a profile
[] Browse information on marijuana policy over time and by state
[] Subscribe to updates about different states
[] View content for/about marijuana policy specific to that state (pending bills, politicians' stances, criminal stats, local dispensary info)
[] Share information and news updates on social media

-------

Problem summary:

In a legal landscape that is rapidly changing, users do not have an easy way to look up information on marijuana policies from state to state in the US.

-------

Rails Models:

-User (name:string, email:string, facebook url:string, twitter url:string, bio:text, home state:string, subscribed states:array of strings)
-State (name:string, status:string, grow:boolean, grow_details:text, possess:boolean, possess_details:text, carry_limit:string, buysell:boolean, buysell_details:text, paraph:boolean, paraph_details:text)
-Follows (user_id, state_id)

