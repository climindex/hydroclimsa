<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Weather_Risk_logo.png" 
       alt="ARC-WRC logo" 
       width="200">
</p>

<div align="center">
  <h1>Weather Risk App User Guide</h1>
</div>

<p align="center">
by Dr Sarah Roffe 
</p>
<p align="center">
Agrometeorology Division, Agricultural Research Council – Natural Resources and Engineering (ARC-NRE), South Africa
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/climindex/hydroclimsa/main/Figures/ARC-WRC-logo.png" 
       alt="ARC-WRC logo" 
       width="200">
</p>

---

Visit the Weather Risk app [Github repository](https://github.com/climindex/hydroclimsa) to find out more about the Weather Risk app and supporting research.

---
## Summary

This document provides a user guide for the Weather Risk platform, a web-based tool developed by the Agrometeorology and Water Science Divisions, together with developers at the Agricultural Research Council (ARC). The app presents a suite of weather and water indices relevant to agricultural decision-making across South Africa, with near-real-time updates and short- to medium-range forecast data available for selected indices.

The user guide provides step-by-step assistance on navigating the platform, interpreting the displayed indices, and accessing forecast information. It is designed to support both first-time users and experienced professionals seeking specific operational insights.

The Weather Risk app is intended to assist with short-term agricultural planning and decision-making, typically on daily to weekly timescales. It serves a wide range of stakeholders, including farmers, agricultural extension and field officers, farmer organisations, planners and technicians, cooperatives, seed and agrochemical companies, agricultural insurance providers, local government, policymakers, and researchers.


## Table of contents
1. [Acknowledgments](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#1-acknowledgments)

2. [Introduction](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#2-introduction)

3. [Accessing the App](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#3-accessing-the-app)

4. [Navigation overview](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#4-navigation-overview)

    4.1. [Accessing video tutorials](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#41-accessing-video-tutorials)

5. [Overview of available indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#5-overview-of-available-indices)

    5.1. Low temperature indices

    5.2. High temperature indices

    5.3. Thermal comfort indices

    5.4. Fire index

    5.5. Rain indices

    5.6. Evaporation index

    5.7. Wind index

    5.8. Water indices

6. [Input data to calculate the indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#6-input-data-to-calculate-the-indices)

  6.1. Weather indices 

  6.2. Water availability indices

7. [Known limitations](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#7-known-limitations)

8. [Feedback and support](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#8-feedback-and-support)

9. [Contact and further information](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#9-contact-and-further-information)


## 1. Acknowledgments

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This platform was developed through the support of the Water Research Commission (WRC project number: C2023/2024-01182), whose funding contribution is gratefully acknowledged.

The Weather Risk app was developed by the Agricultural Research Council (ARC), with the support of a dedicated team of developers, researchers, and collaborators. Mr Philip Beukes served as the lead developer and was instrumental in bringing the app to life, from concept to execution. He led the overall development process, including platform design, integration of core functionalities, and the technical implementation of the weather indices. He calculated the weather indices from gridded datasets and prepared them for visualisation within the app. He also played a central role in processing and preparing the gridded weather data and contributed to the implementation of the forecast functionality. In addition, he integrated the water indices developed by other team members into the app, ensuring that the outputs were correctly formatted and displayed. His expertise and commitment were critical to the project’s success; without his contributions, the Weather Risk app would not exist in its current form.

Alongside Mr Beukes’s foundational work, we acknowledge the valuable contributions of the following team members and collaborators, as summarised below:


| **Contributor** | **Affiliation** | **Key contribution(s)** |
|-----------------|-----------------|--------------------------|
| Dr Sarah Roffe | ARC | Project leader; funding acquisition; contributed to the initial app concept; coordinated app development; led selection and development of weather indices; contributed to selection and processing of water indices; co-led implementation of the forecast functionality; led authoring of the user manual; led user engagement and testing coordination |
| Dr Johan Malherbe | ARC | Contributed to the initial app concept and development coordination; contributed to the selection and development of weather indices; advised on app layout and functionality; assisted in manual development; contributed to the preparation of gridded weather data |
| Dr Michael van der Laan | ARC | Contributed to the initial app concept and development coordination; led selection and development of water indices; assisted in manual development |
| Dr Teboho Masupha | ARC | Contributed to manual development; assisted with user engagement and testing coordination |
| Mr Gert de Nysschen | ARC | Contributed to the initial app concept; assisted in manual development; contributed to user engagement and testing coordination |
| Dr Cindy Viviers | Formerly ARC, now a Private consultant | Contributed to the selection and development of water indices; processed data for some of the water indices |
| Dr Ramontsheng Rapolaki | Formerly ARC, now South African Weather Service | Funding acquisition; contributed to the initial app concept; co-led implementation of the forecast functionality |
| Dr Lindumusa Myeni | Formerly ARC, now North West University | Contributed research to the selection of weather indices |

Finally, we thank our colleagues and partners who provided feedback and support throughout the development process.

## 2. Introduction

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

The Weather Risk platform provides a central, accessible source of weather and water availability indices designed to support short-term agricultural planning and decision-making, from daily operational choices to week-ahead preparation. It combines short-term historical records with selected forecast information and, where relevant, longer-term hydrological climatology.
Weather indices are derived from near-real-time historical data (typically updated with a one to two-day delay), with several indices also available in forecast form. Water-availability indices are provided as both near-real-time monthly updates and as static layers representing recent long-term hydrological conditions. All indices are calculated externally and integrated into the platform as processed outputs, ensuring efficient, consistent delivery of information.

The platform is intended to support a wide range of agricultural stakeholders, including, but not limited to, farmers, agricultural extension officers, field officers, cooperatives, farmer organisations, planners and technicians, seed and agrochemical companies, agricultural insurance providers, agrometeorologists, disaster risk managers, local government, agricultural policymakers, and researchers. By presenting clear, practical indices relevant to crop production, livestock welfare, rangeland management, and risk preparedness, the Weather Risk platform offers regionally appropriate, decision-focused information suitable for on-farm use as well as broader advisory and planning contexts.

## 3. Accessing the App

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

**To access the Weather Risk site, open the following URL in a web browser:**

[link coming]

**The site has been tested and works best on the following web browsers:**

•	Google Chrome

•	Microsoft Edge

•	Mozilla Firefox

**Important usage notes:**

•	A stable internet connection is required for optimal performance.

•	The app is currently supported for use on desktop and laptop computers only. It has not yet been optimised for mobile phones or tablets, but compatibility will be introduced in future updates.


## 4. Navigation overview

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 4.1. Accessing video tutorials

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

Video tutorials will be made available on our YouTube channel: www.youtube.com/@WeatherRiskapp

## 5. Overview of available indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

The Weather Risk app provides a suite of weather- and water-related indices designed largely to support agricultural decision-making. All weather indices are based on observed station data that are updated on a near-real-time basis, typically with a delay of approximately one day. Forecast data is available for selected indices and is displayed as daily values over a 7-day forecast period. These forecast values may represent totals (e.g., rainfall), averages (e.g., temperature), or the number of hours per day in a category (e.g., frost severity levels). For some indices, a summary map is provided to show the total or average across the full 7-day period.

The water indices include one index that reflects monthly anomalies in surface water extent derived from satellite-based Earth observation imagery. The remaining indices are based on long-term hydroclimatologies developed from measured or satellite data, providing a historical baseline to assess deviations from typical water availability.

Indices are organised into thematic categories, accessible via the side tab menu on the left of the interface (see [Section 4 Naviation overview](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#4-navigation-overview)). Each category contains one or more indices related to a specific weather element or agricultural risk.

The current index categories include:

•	Low temperature indices – e.g., frost occurrence

•	High temperature indices – e.g., hottest daily temperature during the last 10 days

•	Thermal comfort indices – e.g., Temperature-Humidity Index

•	Fire danger index (FDI) – e.g., Lowveld FDI

•	Rainfall indices – e.g., total rainfall during the last 10 days

•	Evaporation indices – e.g., monthly potential evapotranspiration

•	Wind indices – e.g., number of damaging wind days

•	Water indices – e.g., monthly surface water anomaly

Each index is displayed spatially via the interactive map interface, with a consistent layout that includes date selection tools, legends, and index-specific guidance. Detailed descriptions and example screenshots for each index are provided in the sections that follow.

### 5.1. Low temperature indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 5.2. High temperature indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 5.3. Thermal comfort indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 5.4. Fire index

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 5.5. Rain indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 5.6. Evaporation index

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 5.7. Wind index

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 5.8. Water indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

## 6. Input data to calculate the indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 6.1. Weather indices 

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 6.2. Water availability indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

## 7. Known limitations

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

## 8. Feedback and support

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

We welcome your input to help improve the Weather Risk platform, which will be continuously updated to meet the evolving needs of users across the agricultural sector. User feedback plays a direct role in shaping these updates, ensuring the platform remains relevant and practical. The following types of feedback and support are encouraged:

•	**Suggest a new index:** Share ideas for additional indices, improvements to existing ones, or new features that could enhance the app’s relevance and usability.

•	**Report a bug:** Let us know about any technical issues or unexpected behaviour you encounter while using the app.

•	**Request training or demonstrations:** If you or your team would benefit from a walkthrough of the app’s features, we are happy to arrange a training or demo session.

•	**Share general feedback:** We also encourage broader feedback, including user stories, reflections on how the app supports your work, or suggestions for future development directions.

To provide feedback, request support, or make enquiries, please contact Dr Sarah Roffe (see [Section 9: Contact Information](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#9-contact-and-further-information)) or complete our feedback questionnaire, available via the [GitHub repository stakeholder engagements section](https://github.com/climindex/hydroclimsa#project-contributions-stakeholder-engagements).


## 9. Contact and further information

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

For further information, please access our GitHub repository [README.md file](https://github.com/climindex/hydroclimsa/blob/main/README.md) or contact:

Dr Sarah Roffe

Agrometeorology Division

Agricultural Research Council

Email: RoffeS@arc.agric.za 

