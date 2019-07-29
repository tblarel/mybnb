# **myBnB**

### [Live App](https://mybnbrails.herokuapp.com/#/)
![Photo1](https://i.imgur.com/rOiDxBx.png) 


**myBnB** is a clone of **Airbnb** built using a Ruby on Rails backend, React/Redux frontend, a PostgreSQL database and Active Storage with Amazon S3. 

The project was planned and carried out within a 10-day timeframe, although improvements and additional features will continue to be fleshed out.


### **Key Features**
* Secure User Sign Up and Login with full user authentication using BCrypt
* Browse home listings in multiple cities across the globe
* Explore and filter listings through integrated GoogleMaps and by number of guests and price
* Book available homes and view your bookings & listings through your User profile page
* Leave ratings and reviews for your past bookings

### **Search Functionality** 
![GIF](https://media.giphy.com/media/f6UShQk3eRIfJF7QXM/giphy.gif)

### **Booking and Confirmation Animation** 
![GIF](http://giphygifs.s3.amazonaws.com/media/2yvNnw0BN80IiZ4AMv/giphy.gif)

### **Responsive Design** 
![GIF](https://media.giphy.com/media/coC1Zl9tiaAt9sOqu7/giphy.gif)
### By leveraging FlexBox and Media Queries, the app is responsive and optimized for many screen sizes.


### **Code Snippet**

**Method for ReactDates calendar to block prebooked dates**
``` javascript
from `/frontend/components/spots/spot_show.jsx`

isDayBlocked(day) {
        let ctx = this;
        if(ctx !== undefined && ctx.blockedDates){
            if(ctx.blockedDates.indexOf(day._d) > -1) {
                return true
            }
        } if (ctx.state.dates === undefined ||
            ctx.state.dates.length === 0) {
                return false;
        } else {
            ctx.state.dates.forEach(date => {
                if (day._d >= new Date(date[0]) && day._d <= new Date(date[1])) {
                    if (ctx.blockedDates.indexOf(day._d) === -1) {
                        ctx.blockedDates = ctx.blockedDates.concat(day._d);
                        return true;
                    }
                } 
            });
        }
        return false;
    }

```




### **Future Features & Improvements**
- &#9745; Leave reviews on past bookings/listings 
- &#9744; Image carousel/modal for listings page

