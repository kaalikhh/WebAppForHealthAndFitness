
# ui.R Code

library(shiny)
options(shiny.deprecation.messages=FALSE)

ui<-shinyUI(navbarPage(
  id = "pg",
  tags$head(tags$style(HTML(
    "#pg > li:first-child { display: none; }"
  ))),

#Three main headings
# author info
span(
  style = "font-size: 1.2em",
  span("Created by "),
  a("Saurabh Yadav", href = "https://www.linkedin.com/in/saurabhyadav789"),
  HTML("&bull;"),
  span("Code available on"),
  a("GitHub", href = "https://github.com/saurabhyadav789/WebAppForHealthAndFitness"),
  br(),
  
  span("June 13, 2018")
),
  
  h1("Web App for Health and Fitness", 
     style = "font-family: 'Arial', bold;
     font-weight: 500; line-height: 1.1; 
     font-size: 50px;color:black"),
  
#First tab panel created
  tabsetPanel( id="tabs",
  tabPanel( title="Enter Your Details",
            width=10,
            tags$style(type="text/css"),
            
            h1("About You", style = "font-family: 'Arial';
                            font-weight: 500; line-height: 1.1; color: black;font-size: 30px"),

#All of the widgets are stored in different rows according to their category
            
fluidRow(
  
  column(sliderInput("num3", "Your Age: ", min = 0, max=110, value = 18, step = 1, animate=T),width=4),
  column(radioButtons("checkGroup", 
                      label = h4("Select Your Gender: ",style="font-family: 'Arial';color:black"), 
                      choices = list("Female" = 1, 
                                     "Male" = 2),selected = 1),width=4)),
fluidRow(
column(sliderInput("num", "Your Height (in inches): ", min = 0, max=100, value = 60, step = 1, animate=T),width=4),
column(numericInput("num2", 
                    label = h4("Your Weight (in KGs)",style="font-family: 'Arial';color:black"), 
                    value = 65),width=4)),
helpText(h3(a("To convert your weight from Pound to KG, go through this link.",target="_blank",href="https://www.unitconverters.net/weight-and-mass/lbs-to-kg.htm")),style = "font-family: 'Lobster', bold;
                                          font-weight: 250; line-height: 1.1;color:brown"),
br(),
fluidRow(column(6,radioButtons("checkGroup2", 
                               label = h3("Check Activity Level",style="font-family: 'Arial';color:brown"), 
                               choices = list("Inactive (Sedentary)" = 1, 
                                              "Lightly Active" = 2, "Moderately Active"=3,"Very Active"=4,"Super 
                                                             Active"=5),selected = 3)),

         helpText(fluidRow(column(7,h3("Everyday, how many hours do you spend in following activities: ",style="font-family: 'Arial';color:brown"))),
                  br(),
                  fluidRow(
                    column(sliderInput("num5", "RUNNING: ", min = 0, max=24, value = 1, step = 0.5, animate=T),width=5),
                    column(sliderInput("num4", "WALKING: ", min = 0, max=24, value = 2, step = 0.5, animate=T),width=5),
                    column(sliderInput("num7", "SITTING(OFFICE/HOME): ", min = 0, max=24, value = 5, step = 0.5, animate=T),width=5),
                    column(sliderInput("num8", "STANDING: ", min = 0, max=24, value = 3, step = 0.5, animate=T),width=5),
                    column(sliderInput("num10", "SLEEPING: ", min = 0, max=24, value = 6, step = 0.5, animate=T),width=5),
                    column(sliderInput("num6", "SWIMMING: ", min = 0, max=24, value = 1, step = 0.5, animate=T),width=5),
                    column(sliderInput("num9", "GYMMING: ", min = 0, max=24, value = 2, step = 0.5, animate=T),width=5))),
                     
         fluidRow(
           column(img(src='http://static.filmannex.com/users/galleries/295160/19865_fa_rszd.jpg', height=300,width=750),width=5)
           
         ),
         br(),
         h3("Tell us about your daily eating: ", style = "font-family: 'Arial;
            font-weight: 500; line-height: 1.1;color:Brown"),
                                 fluidRow(
                                   column(radioButtons("radio", label = h4("Select Servings of Vegetables",style="font-family: 'Bangers';color:black"), 
                                                       choices = list("0-1" = 1, "2-4" = 2,
                                                                      "5-7" = 3, "8-10"=4), selected = 3),width=5),
                                   column(radioButtons("radio2", label = h4("Select Servings of Fruits",style="font-family: 'Bangers';color:black"), 
                                                       choices = list("0-1" = 1, "2-4" = 2,
                                                                      "5-7" = 3, "8-10"=4), selected = 2),width=5),
                                   column(radioButtons("radio3", label = h4("Select Servings of Grains",style="font-family: 'Bangers';color:black"), 
                                                       choices = list("0-1" = 1, "2-4" = 2,
                                                                      "5-7" = 3, "8-10"=4), selected = 3),width=5),
                                   column(radioButtons("radio4", label = h4("Select Servings of Protein",style="font-family: 'Bangers';color:black"), 
                                                       choices = list("0-1" = 1, "2-4" = 2,
                                                                      "5-7" = 3, "8-10"=4), selected = 2),width=5),
                                   column(radioButtons("radio5", label = h4("Select Servings of Dairy",style="font-family: 'Bangers';color:black"), 
                                                       choices = list("0-1" = 1, "2-4" = 2,
                                                                      "5-7" = 3, "8-10"=4), selected = 2),width=5),
                                   column(radioButtons("radio6", label = h4("Select Glasses of Water",style="font-family: 'Bangers';color:black"), 
                                                       choices = list("0-1" = 1, "2-4" = 2,
                                                                      "5-7" = 3, "8-10"=4), selected = 3),width=5)),
            
         helpText(h2(a("To calculate the calories consumed for each meal, go through this link.",target="_blank",href="https://www.webmd.com/diet/healthtool-food-calorie-counter")),style = "font-family: 'Lobster', bold;
                                          font-weight: 500; line-height: 1.1;color:brown"),
         fluidRow(
           column(sliderInput("slider1", label = h4("Calories Consumed for Breakfast",style="font-family: 'Bangers';color:black"),
                              min = 0, max = 1000, value = 300, animate=T), width = 6),
           column(sliderInput("slider2", label = h4("Calories Consumed for Lunch",style="font-family: 'Bangers';color:black"),
                              min = 0, max = 1000, value = 600, animate=T), width = 6)),
         fluidRow(
           column(sliderInput("slider4", label = h4("Calories Consumed for Snack",style="font-family: 'Bangers';color:black"),
                              min = 0, max = 1000, value = 300, animate= T), width = 6),
           column(sliderInput("slider3", label = h4("Calories Consumed for Dinner",style="font-family: 'Bangers';color:black"),
                              min = 0, max = 1000, value = 600, animate= T), width = 6)),
         fluidRow(column(4,img(src='http://i.dailymail.co.uk/i/pix/2014/01/10/article-2537130-1A8C43E300000578-620_634x380.jpg',height=500,width=650,align='center'),offset=1)),
         br(),  
         h1("Your Mental Health", style = "font-family: 'Arial';
            font-weight: 500; line-height: 1.1;color:black;font-size: 30px"),  
         fluidRow(
           column(div(checkboxGroupInput("select5", label = h4("Select Item(s) applicable for calculation of your stress*",style="font-family: 'Arial';color:brown"), 
                                         choices = list("My dedication to work, exercise, diet and friendships is waning."=5,
                                                        "I am falling further behind in many of the responsibilities in my life."=6,
                                                        "I am losing my sense of humor."=7,
                                                        "I find it more and more difficult to see people socially."=8,
                                                        "I feel tired most of the time."=9,
                                                        "I don't seem to have much fun anymore."=10,
                                                        "I feel trapped."=11,
                                                        "I find myself less eager to go back to work or to resume my chores after a weekend." =1,  
                                                        "I feel less and less patient and/or sympathetic listening to other peoples' problems."=2,
                                                        "I ask more closed-ended questions to discourage dialogue with friends and co-workers than open-ended ones to encourage it."=3,
                                                        "I try to get away from people as soon as I can."=4,
                                                        
                                                        "I know what will make me feel better, but I just can't push myself to do it and I'll say Yes, but ignore any suggestions that people make."=12
                                         ), 
                                         selected = c(5,9)
           )), width = 4),
           column(4,img(src='https://memory.foundation/wp-content/uploads/2014/06/stress-meter.gif', height=500,width=350),offset=1, align="right")),
         
         
         br(),
         br(),
         fluidRow(
           column(img(src='https://static.secure.website/wscfus/10149312/6986229/results5-w200-o.png',height=300,width=250),width=12,align='center')
         ),
         
         
         
         #Tab link
         h1(actionLink("link_to_tabpanel_b", "Results"),align='center'),
         br()
)),
  
#Second tab panel created

tabPanel(title="Results", value="Results",
         br(),
         h2("Below are the results: ",style = "font-family: 'Arial', bold;
            font-weight: 500; line-height: 1.1;color:Black"),
         list(tags$head(tags$style("body {background-color: lightgrey; }"))),
         
         #Within the output tab panel, there are 4 additional tabs
         #Tab 1
         
         tabsetPanel(
           tabPanel(h1("Plot",style = "font-family: 'Arial', bold;
                       font-weight: 500; line-height: 1.1; color: brown"), plotOutput("distPlot",width="100%"),
                    plotOutput("distPlot2",width="100%"),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    plotOutput("distPlot3",width="100%"),
                    br(),
                    br(),
                    br(),
                    br(),
                    plotOutput("distPlot4"),
                    br(),
                    br(),
                    br()
           ),
           #Tab 2 
           
           tabPanel(h1("Summary",style = "font-family: 'Arial', bold;
                       font-weight: 500; line-height: 1.1;color: brown"), 
                    
                    
                    h1(uiOutput("text1")),img(src='https://images.agoramedia.com/everydayhealth/gcms/BMI-in-Adults-722x406.jpg',height=400,width=650), 
                    br(),  
                    h2("Your Eating Habits: ",style="font-family: 'Arial';color:black;font-size: 30px"),
                    uiOutput("text2"),
                    uiOutput("text3"), uiOutput("text4"),
                    uiOutput("text5"),uiOutput("text6"),
                    uiOutput("text13"),uiOutput("text14"),
                    uiOutput("text7"),
                    uiOutput("text8"),
                    uiOutput("text9"),uiOutput("text10"),
                    uiOutput("text12"),
                    
                    h2("Your Daily Activities: ",style="font-family: 'Arial';color:Black;font-size: 30px"),
                    img(src='https://media.istockphoto.com/vectors/cartoon-boys-daily-activities-vector-id620391426',height=300,width=450), uiOutput("text11"), uiOutput("text15"),
                    br(), h2("Your Mental Health: ",style="font-family: 'Arial';color:black;font-size: 30px"),
                    img(src='https://capta.org/wp-content/uploads/2018/05/timthumb.png',height=300,width=550), 
                    uiOutput("dynamic")
           )
           
         )),

#Final tab panel created

tabPanel(title="About The App",
         h2("WEB APP FOR YOUR HEALTH AND FITNESS WELCOMES YOU...",style = "font-family: 'Lobster', cursive;
            font-weight: 500; line-height: 1.1;color:brown"),
         h2("With this app you can evaluate your health and fitness by keeping track of your diet and exercise. You can plan your diet according to the calorie needed per day.",style = "font-family: 'Arial', bold;
            font-weight: 500; line-height: 1.1;"),
         br(),
         fluidRow(
           column(img(src='http://thehappyhealthfreak.com/wp-content/uploads/2016/09/Website-Header.png',height=300,width=1050,align='center'),width=6)
         ),
         br(),
         h3("Click on the 'Enter Your Details' tab. Now, you will be required to fil the necessary informationrelated to your health and fitness. If you are not sure about your weight and the number of calories you have consumed from various meal, link is provided below the boxes. There are five sections-- 'About You','Daily Activities Level', 'Everyday, how many hours do you spend in following activities:','Tell us about your daily eating: ','Calories Consumed from various meal of the day' and 'Your Mental Health'.",style = "font-family: 'Arial', bold;
            font-weight: 500; line-height: 1.1;"),
         br(),
         h3("Once you have finished entering all the details required in the 'Enter Your Details' tab, click on the 'Results' tab at the bottom of the page (also available in tab section at top of the page). Here, you will be provided with two different sources of information. The first tab, 'Plot', offers three different graphs to help you evaluate your health and fitness. The first graph is a histogram of your required calorie distribution, with a red line indicating your position on it. See how close you are to the mean of the distribution. The second graph is a pie chart of the number of calories you have consumed from each meal of the day. The third graph is a pie chart of the hours you have spent in various daily activities.",style = "font-family: 'Arial', bold;
            font-weight: 500; line-height: 1.1;"),
         h3("The second tab under result section, 'Summary', offers feedback on your entered health information in different categories: 'About You','Daily Activities Level', 'Everyday, how many hours do you spend in following activities:','Tell us about your daily eating: ','Calories Consumed from various meal of the day' and 'Your Mental Health'.",style = "font-family: 'Arial', bold;
            font-weight: 500; line-height: 1.1;"),
         
         h2("We hope you have found this app informative and helpful!" ,style = "font-family: 'arial', bold;
            font-weight: 500; line-height: 1.1;color:red",align='center'),
         h2("Good luck for your health and fitness.",style = "font-family: 'arial', bold;
            font-weight: 500; line-height: 1.1;color:red",align='center'),
         fluidRow(img(src='http://mountainhighcoffee.com/images/thanks.png', height=300,width=1050,align='center')))
         )
))


# server.R Code

suppressWarnings(library(ggplot2))

#BMI function

bmi.f<-function(height,weight){
  bmi<-weight/(height^2) * 703
  if (bmi<18.5){
    f<-h3("Your bmi is:", bmi, "you are UNDERWEIGHT.",style = "font-family: 'Lobster', cursive;color:red")
  }
  if (bmi>=18.5&bmi<25){
    f<-h3("Your bmi is:", bmi, "you are HEALTHY.",style = "font-family: 'Lobster', cursive;color:red")
  }
  if (bmi>=25&bmi<30){
    f<-h3("Your bmi is:", bmi, "you are OVERWEIGHT.",style = "font-family: 'Lobster', cursive;color:red")
  }
  if (bmi>=30){
    f<-h3("Your bmi is:", bmi, "you are OBESE.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}

#Food functions

veg <-function(num){
  if(num>=3){
    f<-h3("You are eating the minimum daily recommended amount of vegetables.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else{
    f<-h3("You are NOT eating the minimum daily recommended amount of vegetables.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}
fruit<-function(num){
  if(num>=2){
    f<-h3("You are eating the minimum daily recommended amount of fruits.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else{
    f<-h3("You are NOT eating the minimum daily recommended amount of fruits.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}
grains<-function(num){
  if(num>=3){
    f<-h3("You are taking the minimum daily recommended amount of grains.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else{
    f<-h3("You are NOT taking the minimum daily recommended amount of grains.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}

meat<-function(num){
  if(num>=2){
    f<-h3("You are eating the minimum daily recommended amount of meat/poultry.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else{
    f<-h3("You are NOT eating the minimum daily recommended amount of meat/poultry.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}

dairy<-function(num){
  if(num>=2){
    f<-h3("You are taking the minimum daily recommended amount of dairy.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else{
    f<-h3("You are NOT taking the minimum daily recommended amount of dairy.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}

water<-function(num){
  if(num>=7){
    f<-h3("You are drinking the daily minimum recommended amount of water.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else{
    f<-h3("You are NOT drinking the daily minimum recommended amount of water.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}
sleep<-function(num){
  if(num>=7){
    f<-h3("You are sleeping the daily minimum recommended amount of hours.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else{
    f<-h3("You are NOT sleeping the daily minimum recommended amount of hours.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}

#Water function

water2<-function(weight,one,two,three,four){
  activity<-sum(one,two,three,four)*60
  hydrate<-((weight*0.5)+((activity/30)*12))*0.0295
  h3("You require",hydrate,"ltr of water everyday based on weight and activity.",style = "font-family: 'Lobster', cursive;color:black")
}
#BasalMetabolicRate function


bmr<-function(height,weight,age,gender){
  if(gender==1){
    bmr<- 655 + ( 4.35 * weight) + ( 4.7 * height) - ( 4.7 * age)
  }
  else{
    bmr<-66 + ( 6.23 * weight) + ( 12.7 * height) - ( 6.8 * age )
  }
  return(bmr)
}
#Calorie function that uses BMR
bmr2<-function(activity,height,weight,age,gender){
  if(activity==1){
    bmr2<-bmr(height,weight,age,gender)*1.2
    f<-h3("You require",bmr2,"calories to maintain your weight if your activity level stays the same.",style="color:black")
  }
  if(activity==2){
    bmr2<-bmr(height,weight,age,gender)*1.375
    f<-h3("You require",bmr2,"calories to maintain your weight if your activity level stays the same.",style="color:black")
  }
  if(activity==3){
    bmr2<-bmr(height,weight,age,gender)*1.55
    f<-h3("You require",bmr2,"calories to maintain your weight if your activity level stays the same.",style="color:black")
  }
  if(activity==4){
    bmr2<-bmr(height,weight,age,gender)*1.725
    f<-h3("You require",bmr2,"calories to maintain your weight if your activity level stays the same.",style="color:black")
  }
  if(activity==5){
    bmr2<-bmr(height,weight,age,gender)*1.9
    f<-h3("You require",bmr2,"calories to maintain your weight if your activity level stays the same.",style="color:black")
  }
  return(f)
}

#Calorie function that uses BMR without any text ouput

bmr3<-function(activity,height,weight,age,gender){
  if(activity==1){
    bmr2<-bmr(height,weight,age,gender)*1.2
  }
  if(activity==2){
    bmr2<-bmr(height,weight,age,gender)*1.375
  }
  if(activity==3){
    bmr2<-bmr(height,weight,age,gender)*1.55
  }
  if(activity==4){
    bmr2<-bmr(height,weight,age,gender)*1.725
  }
  if(activity==5){
    bmr2<-bmr(height,weight,age,gender)*1.9
  }
  return(bmr2)
}

#Calories burned function

burned<-function(weight,walk,run,swim,sit,stand,weightt,sleep){
  burn<-(weight/2.2) * ((3.8*walk)+(7.5*run)+(6*swim)+(0.92*sit)+(2.3*stand)+(3*weightt)+(0.92*sleep))
  f<-h3("You have burned",burn,"calories.",style = "font-family: 'Lobster', cursive; color:black")
  return(f)
}

#Total calories function


total2<-function(breakfast,lunch,dinner,snack,activity,height,weight,age,gender){
  t<-sum(breakfast,lunch,dinner,snack)
  b<-bmr3(activity,height,weight,age,gender)
  if (t <= (0.8*b)){
    f<-h3("You have consumed",t,"calories. You are eating at least 20% UNDER your recommended calorie consumption.",style = "font-family: 'Lobster', cursive;color:red")
  }
  else if (t >= (1.2*b)){
    f<-h3("You have consumed",t,"calories. You are eating at least 20% OVER your recommended calorie consumption.",style = "font-family: 'Lobster', cursive;color:red")
  }
  else{
    f<-h3("You have consumed",t,"calories. You are eating within a healthy range of your recommended calorie consumption.",style = "font-family: 'Lobster', cursive;color:green")
  }
  return(f)
}

#Function for determining most/least calories in meal

meal<-function(breakfast,lunch,dinner,snack,activity,height,weight,age,gender){
  t<-c(breakfast,lunch,dinner,snack)
  m<-which.max(t)
  m2<-which.min(t)
  b<-bmr3(activity,height,weight,age,gender)
  t2<-sum(breakfast,lunch,dinner,snack)
  if (t2 <= (0.8*b)){
    if (m==m2){
      f<-h3("You are consuming enough number of calories for all meals.",style = "font-family: 'Lobster', cursive;color:green")
    }
    else if(m2==1){
      f<-h3("You are not consuming enough number of calories for breakfast.",style = "font-family: 'Lobster', cursive;color:red")
    }
    else if(m2==2){
      f<-h3("You are not consuming enough number of calories for lunch.",style = "font-family: 'Lobster', cursive;color:red")
    }
    else if(m2==3){
      f<-h3("You are not consuming enough number of calories for dinner.",style = "font-family: 'Lobster', cursive;color:red")
    }
    else {
      f<-h3("You are not consuming enough number of calories for your snack(s).",style = "font-family: 'Lobster', cursive;color:red")
    }}
  else if (t2 >= (1.2*b)){
    if (m==m2){
      f<-h3("You are consuming enough number of calories for all meals.",style = "font-family: 'Lobster', cursive;color:green")
    }
    else if(m==1){
      f<-h3("You are consuming good number of calories for breakfast.",style = "font-family: 'Lobster', cursive;color:red")
    }
    else if(m==2){
      f<-h3("You are consuming good number of calories for lunch.",style = "font-family: 'Lobster', cursive;color:red")
    }
    else if(m==3){
      f<-h3("You are consuming good number of calories for dinner.",style = "font-family: 'Lobster', cursive;color:red")
    }
    else {
      f<-h3("You are consuming good number of calories for your snack(s).",style = "font-family: 'Lobster', cursive;color:red")
    }}
  else{
    f<-h3("Nice, controlling caloric intake.",style = "font-family: 'Lobster', cursive;color:green")
  }
  return(f)
  
}

#Exercise_Function

exercise<-function(one,two,three,four){
  t<-sum(one,two,three,four)
  if(t<1/3){
    f<-h3("You are NOT meeting daily minimum amount of recommended exercise.",style = "font-family: 'Lobster', cursive;color:red")
  }
  else{
    f<-h3("You are meeting daily minimum amount of recommended exercise.",style = "font-family: 'Lobster', cursive;color:green")
  }
  return(f)
}

#Function that creates pie chart of calories

pie2<-function(breakfast,lunch,dinner,snack){
  slices <- c(breakfast, lunch,dinner, snack)
  lbls <- c("Breakfast", "Lunch", "Dinner", "Snack")
  pie(slices, labels = lbls, main="Pie Chart of Calories from Meals",col=c("red","black","green","yellow"))
}

#Function that creates pie chart of activities

pie3<-function(num4,num5,num6,num7,num8,num9,num10){
  if (sum(num4,num5,num6,num7,num8,num9,num10)>0){
    slices <- c(num4,num5,num6,num7,num8,num9,num10)
    lbls <- c("WALKING","RUNNING", "SWIMMING","SITTING(OFFICE/HOME)","STANDING", "GYMMING","SLEEPING")
    pie(slices, labels = lbls, main="Pie Chart of Activities",col=c("pink","blue","green","purple","red","black","orange","violet"))
  }
  else if (num4==0&num5==0&num6==0&num7==0&num8==0&num9==0&num10==0){
    print("You have entered 0 hours for all activities.")
  }
}
#Stress_function

stress<-function(num){
  p<-unlist(num)
  p<-as.vector(p)
  if (length(p)<=3){
    f<-h3("Your stress level is VERY LOW, within a healthy range.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else if (length(p)>3 & length(p)<7){
    f<-h3("Your stress level is LOW and within a healthy range, but it may be rising.",style = "font-family: 'Lobster', cursive;color:green")
  }
  else if (length(p)>6 & length(p)<10){
    f<-h3("Your stress level is MEDIUM.",style = "font-family: 'Lobster', cursive;color:red")
  }
  else{
    f<-h3("Your stress level is HIGH.",style = "font-family: 'Lobster', cursive;color:red")
  }
  return(f)
}

#server_section
server<-shinyServer(function(input, output,session) {
  updateTabsetPanel(session, inputId="page", selected = "Enter Your Details")
  
  output$text1 <- renderUI({ 
    bmi.f(height=input$num,weight=(input$num2)/0.454)
  })
  
  output$text2 <- renderUI({ 
    veg(input$radio)
  })
  
  output$text3 <- renderUI({ 
    fruit(input$radio2)
  })
  output$text4 <- renderUI({ 
    grains(input$radio3)
  })
  output$text5 <- renderUI({ 
    meat(input$radio4)
  })
  output$text6 <- renderUI({ 
    dairy(input$radio5)
  })
  output$text13 <- renderUI({ 
    water(input$radio6)
  })
  output$text15 <- renderUI({ 
    sleep(input$num10)
  })
  output$text14 <- renderUI({ 
    water2(weight=(input$num2)/0.454,one=input$num4,two=input$num5,three=input$num6,
           four=input$num9)
  })
  output$text7 <- renderUI({ 
    bmr2(height=input$num,weight=(input$num2)/0.454,age=input$num3,gender=input$checkGroup,
         activity=input$checkGroup2)
  })
  output$text8 <- renderUI({ 
    burned(weight = (input$num2)/0.454,walk=input$num4,run=input$num5,swim=input$num6,
           sit=input$num7,stand=input$num8,weightt=input$num9,sleep=input$num10)
  })
  output$text9 <- renderUI({ 
    total2(height=input$num,weight = (input$num2)/0.454,age=input$num3,gender=input$checkGroup,
           activity=input$checkGroup2, breakfast=input$slider1, lunch=input$slider2, 
           dinner=input$slider3,snack=input$slider4)
  })
  output$text10 <- renderUI({ 
    meal(height=input$num,weight = (input$num2)/0.454,age=input$num3,gender=input$checkGroup,
         activity=input$checkGroup2, breakfast=input$slider1, lunch=input$slider2, 
         dinner=input$slider3,snack=input$slider4)
  })
  output$text11 <- renderUI({ 
    exercise(one=input$num4,two=input$num5,three=input$num6, four=input$num9)
  })
  #Creates histogram of distriubtion of recommended calories
  
  output$distPlot <-reactivePlot(function(){
    rec=bmr3(height=input$num,weight=(input$num2)/0.454,age=input$num3,gender=input$checkGroup,
             activity=input$checkGroup2) 
    actual=sum(breakfast=input$slider1, 
                 lunch=input$slider2,dinner=input$slider3,snack=input$slider4)
    vector <- rnorm(100000,rec,300)
    breaks <- quantile(vector,seq(0,1,by=0.1))
    labels = 1:(length(breaks)-1)
    seg <- cut(vector,breaks,
               labels=labels,
               include.lowest = TRUE, right = TRUE)
    df = data.frame(vector=vector,seg=seg)
    g<-ggplot(df, aes(x=vector)) +   
      geom_histogram(col="red",binwidth=40)+
      geom_vline(xintercept =actual ,col="brown",lwd=2)+
      labs(title="Deviation from Required Calorie Distribution")+ 
      labs(x="Calories", y="Counts") +	
      theme(plot.background=element_blank())
    return(g)
  },bg = "transparent")
  
  output$distPlot2 <-reactivePlot(function(){
    pie2(breakfast=input$slider1, lunch=input$slider2, 
         dinner=input$slider3,snack=input$slider4)
  },bg = "transparent",height = 650, width = 650)
  
  output$distPlot3 <-reactivePlot(function(){
    pie3(input$num4,input$num5,input$num6,input$num7,input$num8,input$num9,input$num10)
  },bg = "transparent",height = 650, width = 650)
 

  output$dynamic <- renderUI({
    stress(input$select5)
  })
  
  #Result Tab
  
  observeEvent(input$link_to_tabpanel_b, {
    newvalue <- "Results"
    updateTabsetPanel(session, "tabs", newvalue)
  })
  
})

shinyApp(ui, server)



