<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Weather_risk_logo_no_background.png" 
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

<p align="center">
Version 1.0 - Initial release (January 2026)
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

5. [Available indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#5-available-indices)

    5.1. [Low temperature indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#51-low-temperature-indices)

    5.2. [High temperature indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#52-high-temperature-indices)

    5.3. [Thermal comfort indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#53-thermal-comfort-indices)

    5.4. [Fire danger indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#54-fire-index)

    5.5. [Rain indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#55-rain-indices)

    5.6. [Potenital Evapotranspiration indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#56-evaporation-indices)

    5.7. [Wind indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#57-wind-index)

    5.8. [Water availability indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#58-water-indices)

6. [Input data to calculate the indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#6-input-data-to-calculate-the-indices)

  6.1. [Weather indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#61-weather-indices) 

  6.2. [Water availability indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#62-water-availability-indices)

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

The Weather Risk platform provides a central, accessible source of weather- and water-availability indices designed to support short-term agricultural planning and decision-making, from daily operational choices to week-ahead preparation. It combines short-term historical records with selected forecast information and, where relevant, longer-term hydrological climatology.

Weather indices are derived from near-real-time historical data (typically updated with a one- to two-day delay), with several indices also available in forecast form. Water-availability indices are provided as both near-real-time monthly updates and as static layers representing recent long-term hydrological conditions. All indices are calculated externally and integrated into the platform as processed outputs, ensuring efficient and consistent delivery of information.

The platform is intended to support a wide range of agricultural stakeholders, including, but not limited to, farmers, agricultural extension officers, field officers, cooperatives, farmer organisations, planners and technicians, seed and agrochemical companies, agricultural insurance providers, agrometeorologists, disaster risk managers, local government, agricultural policymakers, and researchers. By presenting clear, practical indices relevant to crop production, livestock welfare, rangeland management, and risk preparedness, the Weather Risk platform offers regionally appropriate, decision-focused information suitable for on-farm use as well as broader advisory and planning contexts. While the Weather Risk platform is now operational and publicly accessible, it is designed to function as a continually evolving system, with ongoing refinement and expansion anticipated in response to user feedback, emerging research, and the availability of updated gridded and hydrological data products.

## 3. Accessing the App

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

**To access the Weather Risk site, open the following URL in a web browser:**

www.weatherrisk.arc.agric.za/

**The site has been tested and works best on the following web browsers:**

•	Google Chrome

•	Microsoft Edge

•	Mozilla Firefox

**Important usage notes:**

•	A stable internet connection is required for optimal performance.

•	The app is currently supported for use on desktop and laptop computers only. It has not yet been optimised for mobile phones or tablets, but compatibility will be introduced in future updates.


## 4. Navigation overview

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

The Weather Risk app features a user-friendly interface designed to help users easily explore a range of weather- and water-availability indices. This section provides an overview of the core navigation functions that are consistent throughout the platform.

Upon opening the Weather Risk site in a web browser, users are directed to the home dashboard, which includes an interactive base map and side menus containing tabs for the available indices (Figure 1).

Key navigation features displayed on the home dashboard (Figure 1) include:
1)	**Base map:** an interactive map interface used to display selected index layers.
2)	**Left-hand action menu:** a tab-based navigation panel that allows users to switch between different index categories and access the information tab.
3)	**Top-right layer selector:** an interactive layer control used to toggle between base maps (e.g. Google Earth, Google Streets, or a Digital Elevation Model (DEM)), switch cadastral boundaries on or off (e.g. South African provinces, municipalities, and towns), and enable or disable weather station layers (e.g. 10-day rainfall totals, 30-day rainfall totals, and quality-controlled (QC) stations).




<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Landing-page-labelled.jpg" 
       alt="Landing-page-labelled" 
       width="800">
</p>
<p align="center">
Figure 1: Labelled home dashboard of the Weather Risk web-based application, highlighting the main navigation and layer-selection features.
</p>



**Interacting with the base map**

Users can interact with the base map (1 in Figure 1) in the following ways:

1)	Scroll forward with the mouse scroll wheel to zoom in at the cursor location.
2)	Scroll backward with the mouse scroll wheel to zoom out at the cursor location.
3)	Use a two-finger pinch gesture on a touchpad to zoom in.
4)	Use a two-finger spread gesture on a touchpad to zoom out.
5)	Double-click on the map to zoom in at the cursor location.
6)	When zoomed in, right-click and drag with the mouse, or click and drag with one finger on a touchpad, to pan across the map.



**Using the left-hand action menu**

The left-hand action menu (Figure 2) is used to navigate between different index groups and to display selected index layers on the base map (1; Figure 1).


<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Left-hand_action_menu-labelled.jpg" 
       alt="Left-hand_action_menu-labelled" 
       width="400">
</p>
<p align="center">
Figure 2: Labelled left-hand action menu showing the different index tabs, user guide section numbers, and the information tab.
</p>


Upon selecting an index tab, users can hover over an index selection button to display a pop-up description of the index. Alternatively, selecting the (i) icon next to the index name navigates directly to the relevant section of the user guide for more detailed information (Figure 3). In the example shown, the user hovers over the Observed button for the Daily minimum temperature index.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Index-info-mouse-hover.jpg" 
       alt="Index-info-mouse-hover" 
       width="600">
</p>
<p align="center">
Figure 3: Example of accessing the low-temperature indices tab, showing a hover action over the Daily minimum temperature index selector button to display the index description pop-up.
</p>



**Displaying index layers**

To display an index layer, users must first select the desired date using the date selector and then click the corresponding index selection button (Figure 4). Observed weather indices typically have an update delay of approximately two days.

Users can adjust the transparency of the displayed layer using the opacity slider located on the right-hand side of the map, below the top-right layer selector (Figure 4). Clicking anywhere on the map displays the pixel value at that location, as illustrated by the example northeast of Upington. When an index layer is displayed, the corresponding legend appears in the bottom-right corner of the map.


 <p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Example-selected-index-opcity-pixel-value-date.JPG" 
       alt="Example-selected-index-opcity-pixel-value-date" 
       width="800">
</p>
<p align="center">
Figure 4: Example display of the Daily minimum temperature index for 28 January 2026, showing the date selector for observed weather indices, an example pixel value, the opacity slider, and the index legend.
</p>



**Viewing forecast indices**

Where forecast data are available for a specific index, users can use the forecast toggle slider to view different daily forecast periods (Figure 5). Clicking along the slider allows selection of individual forecast days from day 1 to day 7. For some indices, a 7-day total or average forecast can be viewed by selecting the far-right end of the slider. The index selection button can be clicked either before or after selecting the desired forecast day.

 <p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Low-temperature-forecast-toggle.JPG" 
       alt="Low-temperature-forecast-toggle" 
       width="400">
</p>
<p align="center">
Figure 5: Example use of the forecast toggle for the Daily minimum temperature forecast, with the slider set to 31 January 2026 (day 3 of the forecast issued on 29 January 2026).
</p>



**Water availability indices**

For water-availability indices, users interact with the map in the same way as for weather indices, including adjusting opacity and viewing pixel values. However, date selection is handled via drop-down menus rather than calendar selectors, as shown in Figure 6.


 <p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Date-selectors-water-indices.jpg" 
       alt="Date-selectors-water-indices" 
       width="500">
</p>
<p align="center">
Figure 6: Example of date selection using drop-down menus within the water-availability indices tab.
</p>



**Accessing additional information**

Finally, users wishing to obtain further information about the Weather Risk platform can select the Information tab from the left-hand action menu (Figure 7). This section provides background information on the platform, data sources, index descriptions, and links to supporting documentation, including the user guide.


  <p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Information-tab.JPG" 
       alt="Information-tab" 
       width="500">
</p>
<p align="center">
Figure 7: Screenshot of the information tab.
</p>



### 4.1. Accessing video tutorials

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

Video tutorials will be made available on our YouTube channel: www.youtube.com/@WeatherRiskapp

## 5. Available indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

The Weather Risk app provides a suite of weather- and water-related indices designed largely to support agricultural decision-making. All weather indices are based on observed station data that are updated on a near-real-time basis, typically with a delay of approximately one day. Forecast data is available for selected indices and is displayed as daily values over a 7-day forecast period. These forecast values may represent totals (e.g., rainfall), averages (e.g., temperature), or the number of hours per day in a category (e.g., frost severity levels). For some indices, a summary map is provided to show the total or average across the full 7-day period.

The water indices include one index that reflects monthly anomalies in surface water extent derived from satellite-based Earth observation imagery. The remaining indices are based on long-term hydroclimatologies developed from measured or satellite data, providing a historical baseline to assess deviations from typical water availability.

Indices are organised into thematic categories, accessible via the side tab menu on the left of the interface (see [Section 4 Naviation overview](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#4-navigation-overview)). Each category contains one or more indices related to a specific weather element or agricultural risk.

The current index categories include:

•	**Low temperature indices** – e.g., frost occurrence

•	**High temperature indices** – e.g., highest daily temperature during the last 10 days

•	**Thermal comfort indices** – e.g., Temperature-Humidity Index

•	**Fire danger index (FDI)** – e.g., Lowveld FDI

•	**Rainfall indices** – e.g., total rainfall during the last 10 days

•	**Evaporation indices** – e.g., monthly potential evapotranspiration

•	**Wind indices** – e.g., number of damaging wind days

•	**Water indices** – e.g., monthly surface water anomaly

Each index is displayed spatially via the interactive map interface, with a consistent layout that includes date selection tools, legends, and index-specific guidance. Detailed descriptions and example screenshots for each index are provided in the sections that follow.

### 5.1. Low temperature indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features three indices that describe daily minimum temperature patterns, including general conditions as well as cold events that may affect crops or livestock. All indices include observed data, updated on a near-real-time basis, while forecast data is available for selected indices, including minimum temperature and frost days.

The indices included are:

### Daily minimum temperatures

**Description:**

This index represents the absolute lowest temperature recorded each day, measured in °C. It provides a daily map of observed minimum temperature conditions and includes a 7-day forecast, useful for identifying cold nights and assessing potential frost risk.

**Agricultural relevance and practical application:**

Minimum temperature is a key indicator of frost and cold stress risk. For crop farmers, the index helps assess vulnerability during early growth or flowering stages. If temperatures are forecast to fall below 2°C, a vegetable farmer might delay planting or take protective action, such as covering seedlings. For livestock farmers, the index supports cold-weather planning. A farmer may, for example, provide additional feed or shelter to reduce cold stress on young or vulnerable animals during anticipated cold nights.

**Data source and update frequency:**

This index is derived from observed daily minimum temperature data, updated on a near-real-time basis (typically one day behind). Forecast data is available for up to 7 days ahead and is displayed as daily values. The final forecast day shows the average minimum temperature over the full 7-day period.

**Map interpretation:**

The index is displayed as a colour gradient map, with cooler minimum temperatures shown in blue to purple tones, and warmer values in yellow to red. Both the observed and forecast maps use this same colour scheme and temperature scale, making it easy to compare current and expected conditions. The legend, located in the bottom-right corner of the map interface, indicates the temperature scale in °C.

An example of the observed minimum temperature is shown in Figure 8, while the corresponding forecast map is shown in Figure 9.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Daily-min-temp-observed.JPG" 
       alt="Daily-min-temp-observed" 
       width="800">
</p>

<p align="center">
Figure 8: Observed daily minimum temperature for 28 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Daily-min-temp-forecast.JPG" 
       alt="Daily-min-temp-forecast" 
       width="800">
</p>

<p align="center">
Figure 9: Forecast daily minimum temperature for 29 January 2026, representing Day 1 of the forecast issued on 29 January 2026.
</p>



### Frost 

**Description:**

This index shows the occurrence of frost, classified into three severity levels based on daily minimum temperature thresholds:
•	Light frost: below 2°C
•	Moderate frost: below 0°C
•	Severe frost: below –2°C

Both the observed and forecast versions use these same categories. In the forecast, the index includes a spatial extent map showing where each severity level is expected, and also provides the number of hours per day in each frost category. This allows users to assess not only where frost is likely to occur, but also how long those conditions may persist.

**Agricultural relevance and practical application:**

This index provides critical guidance for managing the risks posed by frost events. For crop farmers, it supports decisions around frost protection during vulnerable crop stages such as germination, flowering, or fruiting. For example, a fruit farmer expecting several hours of severe frost may decide to use frost mitigation measures like overhead irrigation or frost cloths. For livestock farmers, it helps identify days and locations with elevated cold stress risk, particularly where frost is prolonged. A livestock farmer may use this information to move animals to shelter or adjust feeding plans to maintain body heat during forecasted frost periods.

**Data source and update frequency:**

The frost index is derived from observed daily minimum temperature data, updated on a near-real-time basis (typically with a one-day delay). Forecast data is available for up to 7 days ahead. For each forecast day, four maps are provided: one showing the spatial extent of expected frost (classified into light, moderate, or severe), and three showing the number of hours per day below each frost threshold (< 2°C, < 0°C, and < –2°C). Each forecast type also includes a final summary map presenting the total extent or duration over the full 7-day period.

**Map interpretation:**

Frost severity is visualised using a consistent colour-coded scale across both observed and forecast maps. In observed maps, frost is shown using shades of light to dark blue, with darker tones indicating more severe frost. Forecast maps include a daily spatial extent map based on forecast data, using the same categories and colour scheme as the observed frost map to show where light, moderate, or severe frost is expected. Additional maps display the number of hours per day below each frost threshold, and a final summary map presents the total frost duration or extent over the 7-day forecast period for each type.

Figures 10 and 11 show an observed and forecasted frost event, respectively. Figure 6 illustrates the forecasted number of hours of light frost, which follows the same format as maps for moderate and severe frost categories.


### Lowest daily temperature (last 10 days)


### 5.2. High temperature indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features three indices that describe daily maximum temperature patterns, including general conditions as well as hot events that may affect crops or livestock. All indices include observed data, updated on a near-real-time basis, while forecast data is available only for the daily maximum temperature index.

The indices included are:

### Daily maximum temperature 

### Heat stress days (last 10 days)

### Highest daily temperature (last 10 days)


### 5.3. Thermal comfort indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features two main indices that describe daily thermal comfort/stress conditions for people and livestock, supporting decisions that help manage heat stress and protect wellbeing. Both indices include observed data, updated on a near-real-time basis, and have forecast data available for up to 7 days ahead. 

The indices included are:

### Heat Index (Human Thermal Comfort)

### Temperature-Humidity Index (Livestock Thermal Comfort)

### 5.4. Fire danger indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features one index that describes daily fire risk conditions based on a combination of weather variables. The index includes observed data, updated on a near-real-time basis, and also provides a 7-day forecast to support fire preparedness and response.

The index included is:

### Fire Danger Index

### 5.5. Rain indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features five indices that describe daily and short-term historical rainfall patterns, offering insights into both recent rainfall activity and dry spells that may affect crops and livestock. All indices include observed data, updated on a near-real-time basis (typically with a one-day delay), while forecast data is available only for the daily rainfall index.

The indices included are:

### Daily rainfall

### Number of Rain days (last 30 days)

### Days since last rain (up to 60 days)

### Maximum daily rainfall (last 30 days)

### Total rainfall (last 10 and 30 days)

### 5.6. Evaportranspiration indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features two indices that describe daily and short-term historical potential evapotranspiration (PET) patterns, providing insight into recent evaporation and crop water demand conditions that may affect farm operations and grazing resources. All indices include observed data, updated on a near-real-time basis (typically with a one-day delay), while forecast data is available only for the daily PET index

The indices included are:

### Daily Potential Evapotranspiration 

### Total Potential Evapotranspiration (Last 10 and 30 Days)

### 5.7. Wind indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features one index that describes the occurrence of damaging winds, with both observed and forecast data to help users manage wind-related agricultural risks. This index is still under construction and will be added to the platform in a future update.

The index included is:

### Damaging Winds

This index is still under development.

### 5.8. Water availability indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category includes four indices designed to support the management of surface and groundwater resources in relation to weather conditions. These indices are based on the datasets descributed under [6.2. Water availability indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#62-water-availability-indices).

The indices included are:

### Irrigation extent per quaternary catchment

### Blue water irrigation demand

### Monthly surface water anomaly

### Groundwater Harvest Potential

## 6. Input data to calculate the indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

### 6.1. Weather indices 

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

The weather-related indices presented in Sections 5.1 to 5.7 are based on interpolated weather data from the ARC-NRE weather station network, which comprises over 600 stations located across all agroclimatic zones of South Africa (Moeletsi et al. 2022). These stations record at least hourly data for key variables, including rainfall, air temperature, relative humidity, solar radiation, and wind speed and direction, while potential evapotranspiration is also calculated at the same temporal resolution [(Moeletsi et al., 2022, Data, 7(8):117)](https://doi.org/10.3390/data7080117). All variables are summarised into daily totals, averages, minima, and/or maxima, which are then interpolated to generate daily GeoTIFF files at a 1 km grid resolution. Details of the interpolation methodology are available in [Malherbe et al. (2016, Natural Hazards, 80:657-681)](https://doi.org/10.1007/s11069-015-1989-y) and forthcoming work. 

In addition, some indices incorporate short- to medium-range forecast data, available at hourly resolution for up to seven days ahead. This forecast data is produced by dynamically downscaling the [National Centers for Environmental Prediction (NCEP) Global Forecast System (GFS)](https://www.ncei.noaa.gov/products/weather-climate-models/global-forecast) data from a 28 km to a 12 km grid using the Weather Research and Forecasting (WRF) model. Further information on this forecast system is provided in [Malherbe et al. (2025, Environmental Development, 56:101253)](https://doi.org/10.1016/j.envdev.2025.101253). 


### 6.2. Water availability indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

All of the water availability indices are based on datasets obtained from external data providers. Some indices are newly calculated using these external datasets, while others are pre-existing indices developed by the data providers themselves. While selected dataset details are summarised in [Section 5.8](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#58-water-indices), the following data provisions should be noted:

-	**Irrigation extent per quaternary catchment** was derived from the [2023 Field Crop Boundaries dataset](https://agis.nda.agric.za/portal/home/item.html?id=b63baa05c0764b559c75a15863c920a9), developed by the [National Crop Statistics Consortium of the National Department of Agriculture](https://www.nda.gov.za/index.php/publication/320-crop-estimates).
  
-	**Blue water irrigation demand** was calculated using the Google Earth Engine, drawing on two datasets: the [Moderate Resolution Imaging Spectroradiometer (MODIS) MOD16A2GF evapotranspiration product](https://developers.google.com/earth-engine/datasets/catalog/MODIS_061_MOD16A2GF) and the [Climate Hazards Group InfraRed Precipitation with Station data (CHIRPS)](https://developers.google.com/earth-engine/datasets/catalog/UCSB-CHG_CHIRPS_DAILY).
  
-	**Monthly surface water anomalies** were derived from a [surface water area dataset based on Sentinel-2 satellite imagery, spanning 2016 to the present](http://sbdvc.ekodata.co.za/Home/About). This dataset forms part of the National Water Quantity (NWQ) information, available via the [mzansiAmanzi platform](https://www.water-southafrica.co.za/), and was developed by [GeoTerraImage](https://geoterraimage.com/) and [EkoSource](https://www.ekosource.co.za/). Data access was granted by the [South African National Space Agency (SANSA)](https://www.sansa.org.za/).
  
-	**Groundwater harvest potential** is a national dataset developed by the Department of Water and Sanitation (DWS), which granted access to this [data](https://www.dws.gov.za/Groundwater/data/GWharvest.aspx).


## 7. Known limitations

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

While every effort is made to provide accurate and up-to-date information, users should be aware of the following limitations when using the Weather Risk platform:

•	**Data coverage, update frequency, and uncertainties**

All indices are available across South Africa but differ in terms of time coverage, update frequency, spatial resolution, and forecast availability. While some indices are based solely on historical data, others also include forecast components to support short-term agricultural planning and decision-making. The platform is operational and publicly accessible, but it is intentionally designed as a continually evolving system, with additional indices, datasets, and features expected to be incorporated over time as new data products become available and research advances.

Weather indices are derived from gridded data surfaces created from weather station observations [Malherbe et al. (2016, Natural Hazards, 80:657-681)](https://doi.org/10.1007/s11069-015-1989-y). As with any interpolation from point-based observations, associated uncertainties are expected. Observed weather indices are provided at a 1 km spatial resolution, offering relatively high spatial detail but not fully capturing farm-scale microclimatic influences such as slope orientation, sheltering, or small water bodies. Forecast-based weather indices are provided at a coarser spatial resolution (12 km), reflecting the resolution of the underlying forecast systems.

Forecast information is included for selected indices to support short-term planning. These forecasts have not yet been fully validated across all regions or seasons, and forecast skill may vary depending on the index, region, time of year, and forecast lead time. In general, shorter lead times (typically less than three days) are more accurate than longer lead times, with forecasts extending up to seven days ahead. Weather indices are typically updated daily, usually with a one- to two-day delay, although occasional delays may occur due to data processing requirements or system maintenance.

Water-availability indices are based on a range of external datasets not produced by ARC-NRE and are provided at varying spatial resolutions, including quaternary catchments and high-resolution gridded products suitable for regional-scale agricultural applications. The reliability and update frequency of these datasets vary by source. Some indices are updated monthly, while others represent longer-term or static conditions. As with weather data, delays in monthly updates may occasionally occur due to processing or maintenance constraints.

•	**Use caution in interpretation**

While the indices provided are intended to support agricultural decision-making, they should always be interpreted alongside local knowledge, on-farm observations, and other advisory inputs. At present, the Weather Risk platform does not provide automated advisories or recommendations; rather, it presents information in the form of indices to support user interpretation and situational awareness. The development of advisory-type features is a planned enhancement for future iterations of the platform.

The ARC-NRE makes every reasonable effort to ensure the accuracy of the data, drawing from sources believed to be reliable. However, it cannot guarantee the completeness or accuracy of the data or the accompanying documentation and accepts no responsibility for any consequences resulting from the use or misuse of the information by individuals or organisations. Users should also be aware that occasional technical interruptions may affect access to the platform, although services are restored as soon as possible following such disruptions.


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

