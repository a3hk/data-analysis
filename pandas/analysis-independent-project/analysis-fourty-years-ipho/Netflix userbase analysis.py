#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd


# In[3]:


df = pd.read_csv(r"C:\Users\f.pranata\Documents\netflix_userbase.csv")


# In[4]:


df


# In[7]:


df.sort_values(by = 'Gender', ascending = False)


# In[10]:


# Total countries

total_countries = df['Country'].nunique()
total_countries


# In[28]:


# Total subscription by country

total_subscription = df.groupby('Country')['Subscription Type'].count()
total_subscription


# In[47]:


# Data frame for country subscription

df_subscription_country = df.groupby('Country').count()
df_subscription_country.drop(['Monthly Revenue', 'Join Date', 'Last Payment Date', 'Subscription Type', 'Age', 'Gender', 'Device', 'Plan Duration'], axis = 1, inplace = True)
df_subscription_country = df_subscription_country.rename({'User ID': 'Total'}, axis = 1)


# In[50]:


# Top 3 countries with the most subscription

df_subscription_country.sort_values(by = 'Total', ascending = False).head(3)


# In[34]:


# Most subscribed plan

df.groupby('Subscription Type')['User ID'].count()


# In[44]:


# Data frame for subscribed plan

df_subscribed_plan = df.groupby('Subscription Type').count()
df_subscribed_plan.drop(['Monthly Revenue', 'Join Date', 'Last Payment Date', 'Country', 'Age', 'Gender', 'Device', 'Plan Duration'], axis = 1, inplace = True)
df_subscribed_plan = df_subscribed_plan.rename({'User ID': 'Total'}, axis = 1)
df_subscribed_plan.sort_values('Total', ascending = True)


# In[55]:


# Average age of users

df['Age'].mean().round()


# In[54]:


# Average monthly revenue

df['Monthly Revenue'].mean()


# In[51]:


import matplotlib.pyplot as plt


# In[59]:


# Most used device

device = df['Device'].value_counts()
device


# In[69]:


# Data frame for device

df_device = df.groupby('Device').count()
df_device.drop(['Subscription Type', 'Monthly Revenue', 'Join Date', 'Last Payment Date', 'Country', 'Age', 'Gender', 'Plan Duration'], axis = 1, inplace = True)
df_device = df_device.rename({'User ID': 'Total'}, axis = 1)
df_device.sort_values('Total', ascending = True)
df_device


# In[83]:


df_device.plot(kind = 'pie', y = 'Total', autopct='%1.1f%%', legend = False)


# In[80]:


# Data frame for country

df_country = df.groupby('Country').nunique()
df_country.drop(['Subscription Type', 'Monthly Revenue', 'Join Date', 'Last Payment Date', 'Device', 'Age', 'Gender', 'Plan Duration'], axis = 1, inplace = True)
df_country = df_country.rename({'User ID': 'Total user'}, axis = 1)
df_country.sort_values('Total user', ascending = True)
df_country


# In[82]:


df_country.plot(kind = 'pie', y = 'Total user', autopct='%1.1f%%', legend = False)


# In[ ]:




