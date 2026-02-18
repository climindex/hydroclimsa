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

    5.4. [Fire danger indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#54-fire-danger-indices)

    5.5. [Rain indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#55-rain-indices)

    5.6. [Evapotranspiration indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#56-evaportranspiration-indices)

    5.7. [Wind indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#57-wind-indices)

    5.8. [Water availability indices](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#58-water-availability-indices)

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

Users can adjust the transparency of the displayed layer using the opacity slider located on the right-hand side of the map, below the top-right layer selector (Figure 4). Clicking anywhere on the map displays the pixel value at that location, as illustrated by the example northeast of Upington. When an index layer is displayed, the corresponding legend appears in the bottom-right corner of the map, and at the bottom of the map is a scale bar.


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

Indices are organised into thematic categories, accessible via the left-hand action menu of the home dashboard (see [Section 4 Naviation overview](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#4-navigation-overview)). Each category contains one or more indices related to a specific weather element or agricultural risk.

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

The frost index is derived from observed daily minimum temperature data, updated on a near-real-time basis (typically with a up to two days delay). Forecast data is available for up to 7 days ahead. For each forecast day, four maps are provided: one showing the spatial extent of expected frost (classified into light, moderate, or severe), and three showing the number of hours per day below each frost threshold (< 2°C, < 0°C, and < –2°C). Each forecast type also includes a final summary map presenting the total extent or duration over the full 7-day period.

**Map interpretation:**

Frost severity is visualised using a consistent colour-coded scale across both observed and forecast maps. In observed maps, frost is shown using shades of light to dark blue, with darker tones indicating more severe frost. Forecast maps include a daily spatial extent map based on forecast data, using the same categories and colour scheme as the observed frost map to show where light, moderate, or severe frost is expected. Additional maps display the number of hours per day below each frost threshold, and a final summary map presents the total frost duration or extent over the 7-day forecast period for each type.

Figures 10 and 11 show an observed and forecasted frost event, respectively. Figure 12 illustrates the forecasted number of hours of light frost, which follows the same format as maps for moderate and severe frost categories.


<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Frost-observed.JPG" 
       alt="Frost-observed" 
       width="800">
</p>

<p align="center">
Figure 10: Observed frost for 8 August 2025, based on near-real-time data.
</p>

<p align="center">
Figures 11 and 12 will be generated when a frost forecast is issued during the cooler months.
</p>


### Lowest daily temperature (last 10 days)

**Description:**

This index represents the lowest daily minimum temperature, measured in °C, recorded over the past 10 days using observed data only. It provides a quick reference to the most extreme recent cold condition within that period.

**Agricultural relevance and practical application:**

This index helps users gauge recent exposure to extreme cold, which is useful for assessing the short-term impact of low temperatures on crops and livestock. For crop farmers, it can be used to evaluate the likelihood of cold-related stress or frost damage, particularly in sensitive growth stages. For example, if the lowest value was –3°C, a farmer might inspect young or flowering crops for signs of frost injury. For livestock farmers, the index can inform decisions on post-event management, such as increasing feed to support recovery from cold stress or monitoring animals more closely for health issues following particularly cold nights.

**Data source and update frequency:**

The index is derived from observed daily minimum temperature data, updated on a near-real-time basis (typically with a up to two days delay). It reflects the lowest recorded minimum temperature over the 10 most recent days, recalculated daily for each date in the record.

**Map interpretation:**

The index is displayed as a colour gradient map, with cooler recent extremes shown in blue to purple tones and warmer minimums in yellow to red. The legend, located in the bottom-right corner of the map, indicates the temperature scale in °C.

Figure 13 shows the lowest daily minimum temperature recorded across the region over a recent 10-day period.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Lowest_daily_min_temp_obs.JPG" 
       alt="Lowest_daily_min_temp_obs" 
       width="800">
</p>

<p align="center">
Figure 13: Observed lowest daily minimum temperature recorded over the 10-day period ending on 28 January 2026, based on near-real-time data.
</p>


### 5.2. High temperature indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features three indices that describe daily maximum temperature patterns, including general conditions as well as hot events that may affect crops or livestock. All indices include observed data, updated on a near-real-time basis, while forecast data is available only for the daily maximum temperature index.

The indices included are:

### Daily maximum temperature 

**Description:**

This index represents the absolute highest temperature recorded each day, measured in °C. It provides a daily map of observed maximum temperature conditions and includes a 7-day forecast, useful for identifying hot days and assessing potential heat stress risk.

**Agricultural relevance and practical application:**

High daytime temperatures can have serious implications for both crops and livestock. For crop farmers, this index supports the monitoring of heat stress risks, especially during sensitive periods such as flowering or grain filling, when excessive heat can reduce yield and quality. For example, a grain farmer may choose to adjust irrigation schedules or delay planting based on a forecast of consecutive days above 30°C. For livestock farmers, the index provides information on daytime heat exposure, helping to inform decisions such as ensuring animals have access to shade and sufficient water, or adjusting grazing times to cooler parts of the day to reduce heat stress.

**Data source and update frequency:**

This index is derived from observed daily maximum temperature data, updated on a near-real-time basis (typically one day behind). Forecast data is available for up to 7 days ahead and is displayed as daily values. The final forecast day shows the average maximum temperature over the full 7-day period.

**Map interpretation:**

The index is displayed as a colour gradient map, with cooler maximum temperatures shown in blue to purple tones, and warmer values in yellow to red. Both the observed and forecast maps use this same colour scheme and temperature scale, making it easy to compare current and expected conditions. The legend, located in the bottom-right corner of the map interface, indicates the temperature scale in °C.

An example of the observed maximum temperature is shown in Figure 14, while the corresponding forecast map is shown in Figure 15.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Daily-max-temp-observed.JPG" 
       alt="Daily-max-temp-observed" 
       width="800">
</p>

<p align="center">
Figure 14: Observed daily maximum temperature for 29 January 2026, based on near-real-time data.
</p>


<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Daily-max-temp-forecast.JPG" 
       alt="Daily-max-temp-forecast" 
       width="800">
</p>

<p align="center">
Figure 15: Forecast daily maximum temperature for 4 February 2026, representing Day 2 of the forecast issued on 2 February 2026.
</p>


### Heat stress days (last 10 days)

**Description:**

This index represents the number of days with a daily maximum temperature above 30 °C, calculated over the past 10 days. It provides a quick reference to how frequently hot conditions have occurred in the recent past using observed data only.

**Agricultural relevance and practical application:**

Frequent exposure to high temperatures can stress crops and livestock, even if daily values do not reach extreme thresholds. For crop farmers, this index helps identify periods of repeated heat exposure that may affect flowering, pollination, or grain development. For example, if 8 out of the last 10 days exceeded 30 °C, a farmer may inspect crops for signs of heat stress and consider adjusting irrigation to reduce plant stress. For livestock farmers, the index highlights cumulative heat load that may contribute to reduced feed intake, lower productivity, or heat-related illness. A farmer may use this information to increase shade availability or monitor herd behaviour more closely during persistent hot spells.

**Data source and update frequency:**

The index is derived from observed daily maximum temperature data, updated on a near-real-time basis (typically with a up to two days delay). It reflects the number of days with maximum temperature above 30 °C during the 10 most recent days, recalculated daily for each date in the record.

**Map interpretation:**

The index is displayed as a shaded map, where the number of heat stress days is represented on a continuous colour scale ranging from yellow through orange to deep red. Areas with no days above 30 °C appear blank (no colour fill). The legend, located in the bottom-right corner of the map interface, provides a reference for interpreting the number of qualifying days.

An example of the observed heat stress days index for a 10-day period is shown in Figure 16.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Heat-stress-days-observed.JPG" 
       alt="Heat-stress-days-observed" 
       width="800">
</p>

<p align="center">
Figure 16: Observed number of heat stress days (with daily maximum temperature above 30 °C) recorded over the 10-day period ending on 29 January 2026.
</p>


### Highest daily temperature (last 10 days)

**Description:**

This index represents the highest daily maximum temperature, measured in °C, recorded over the past 10 days using observed data only. It provides a quick reference to the most extreme recent heat condition within that period.

**Agricultural relevance and practical application:**

This index highlights the most intense heat exposure in the recent past, which is important for evaluating crop and livestock stress. For crop farmers, it can help assess the potential impact of extreme heat on yield, particularly during sensitive stages like flowering or grain filling. For example, if the highest temperature in the past 10 days exceeded 38°C, a farmer may inspect crops for heat damage or adjust irrigation to help mitigate lingering effects. For livestock farmers, it draws attention to peak heat conditions that may have caused discomfort, dehydration, or reduced feed intake. Farmers may use this information to evaluate the effectiveness of heat mitigation strategies, such as shaded areas or water availability during hotter days.

**Data source and update frequency:**

The index is derived from observed daily maximum temperature data, updated on a near-real-time basis (typically with a up to two days delay). It reflects the highest recorded maximum temperature over the 10 most recent days, recalculated daily for each date in the record.

**Map interpretation:**

The index is displayed as a colour gradient map, where hotter temperatures appear in light to dark red tones, with darker shades indicating more extreme values. The legend, located in the bottom-right corner of the map interface, indicates the temperature scale in °C.

An example of the highest daily temperature recorded for a recent 10-day period is shown in Figure 17.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Highest_daily_max_temp_obs.JPG" 
       alt="Highest_daily_max_temp_obs" 
       width="800">
</p>

<p align="center">
Figure 17: Observed highest daily maximum temperature recorded over the 10-day period ending on 29 January 2026, based on near-real-time data.
</p>


### 5.3. Thermal comfort indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features two main indices that describe daily thermal comfort/stress conditions for people and livestock, supporting decisions that help manage heat stress and protect wellbeing. Both indices include observed data, updated on a near-real-time basis, and have forecast data available for up to 7 days ahead. 

The indices included are:

### Heat index (human thermal comfort)

**Description:**

The Heat Index combines near-surface air temperature and relative humidity to estimate the level of heat stress experienced by humans. It represents how hot conditions feel to people rather than the air temperature alone and is expressed in °C. This index classifies conditions into four categories: Caution, Extreme Caution, Danger, and Extreme Danger. The index is displayed as a daily observed map and includes a 7-day forecast, supporting the identification of potentially hazardous heat conditions for outdoor activities.

**Agricultural relevance and practical application:**

This index is particularly relevant for managing human health and safety during agricultural work. High values indicate conditions under which prolonged outdoor activity may lead to heat-related illness. For farmers and farm workers, the index supports decisions around adjusting work schedules, such as shifting labour-intensive tasks to cooler parts of the day, increasing rest breaks, and ensuring access to shade and drinking water. For example, if conditions are forecast to reach the Danger category, a farmer may delay harvesting or reduce working hours to limit heat stress risks for workers.

**Data source and update frequency:**

This index is derived from daily air temperature and relative humidity data. Observed values are updated on a near-real-time basis (typically up to two days behind), while forecast values are daily average values available for up to 7 days ahead and are displayed as daily values.

**Map interpretation:**

The Heat Index is displayed as a categorical colour map corresponding to different levels of human heat stress. Areas classified as Caution are shown in white, Extreme Caution in yellow, Danger in orange, and Extreme Danger in red. Both observed and forecast maps use the same colour scheme and classification thresholds, allowing for direct comparison between current and expected conditions. The legend, located in the bottom-right corner of the map interface, indicates the level of severity associated with each Heat Index category.

An example of the observed Heat Index is shown in Figure 18, while the corresponding forecast map is shown in Figure 19.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/HI-observed.JPG" 
       alt="HI-observed" 
       width="800">
</p>

<p align="center">
Figure 18: Observed daily Heat Index (human thermal comfort) for 29 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/HI-forecast.JPG" 
       alt="HI-forecast" 
       width="800">
</p>

<p align="center">
Figure 19: Forecast daily Heat Index (human thermal comfort) for 2 February 2026, representing Day 1 of the forecast issued on 2 February 2026.
</p>


### Temperature-Humidity index (livestock thermal comfort)

**Description:**
The Temperature-Humidity Index combines near-surface air temperature and relative humidity to assess the risk of heat stress in livestock. This index is presented as five tailored observed products, with livestock-specific comfort and stress thresholds for goats, sheep, cattle, pigs, and poultry, and categorises conditions into Moderate, High, and Extreme heat stress levels for each livestock type. In addition to the observed products, a single general Temperature-Humidity Index forecast is provided for up to 7 days ahead, indicating expected heat stress conditions without differentiation by livestock type.

**Agricultural relevance and practical application:**
This index is a key indicator of thermal stress in livestock, influencing animal health, productivity, and welfare. Elevated Temperature-Humidity Index values can reduce feed intake, growth rates, milk production, and fertility, while increasing the risk of heat-related illness and mortality. The livestock-specific observed Temperature-Humidity Index maps allow farmers to assess current heat stress risk for their particular animals, supporting decisions such as providing additional shade and water, improving ventilation, or reducing handling and transport during hot conditions. The general Temperature-Humidity Index forecast further supports short-term planning by indicating when heat stress conditions are likely to intensify, allowing farmers to prepare in advance.

**Data source and update frequency:**
This index is derived from near-surface meteorological data and is updated on a near-real-time basis (typically up to two days behind). Observed Temperature-Humidity Index values are displayed separately for each livestock type using tailored stress thresholds, while forecast Temperature-Humidity Index values are available for up to 7 days ahead and are displayed as daily values using a general THI classification.

**Map interpretation:**
Observed Temperature-Humidity Index maps are displayed as categorical colour maps showing levels of heat stress specific to each livestock type, with moderate heat stress shown in yellow, high heat stress in orange, and extreme heat stress in red. These maps allow users to assess current thermal comfort conditions for goats, sheep, cattle, pigs, or poultry. The Temperature-Humidity Index forecast map displays general heat stress conditions using the same colour scheme and classification levels, enabling direct comparison between current and expected conditions. The legend, located in the bottom-right corner of the map interface, indicates the heat stress severity categories.

An example of the observed Temperature-Humidity Index for sheep is shown in Figure 20, while the corresponding general Temperature-Humidity Index forecast map is shown in Figure 21.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/THI_observed.JPG" 
       alt="THI_observed" 
       width="800">
</p>

<p align="center">
Figure 20: Observed Temperature-Humidity Index for sheep on 29 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/THI_forecast.JPG" 
       alt="THI_forecast" 
       width="800">
</p>

<p align="center">
Figure 21: Forecast Temperature-Humidity Index for 2 February 2026, representing Day 1 of the forecast issued on 2 February 2026.
</p>


### 5.4. Fire danger indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features one index that describes daily fire risk conditions based on a combination of weather variables. The index includes observed data, updated on a near-real-time basis, and also provides a 7-day forecast to support fire preparedness and response.

The index included is:

### Fire danger index

**Description:**

This index is calculated using the Lowveld Fire Danger Index, which combines temperature, relative humidity, wind speed, and rainfall to assess daily fire risk conditions. It classifies fire danger into five categories: Safe, Moderate, Dangerous, Very Dangerous, and Extremely Dangerous. The index is available for both observed and forecast conditions, providing guidance for current and upcoming fire danger levels.

**Agricultural relevance and practical application:**

This index is an important tool for fire preparedness and response planning. For crop farmers, it can guide the safe scheduling of controlled burns, particularly in areas where residue management or fire breaks are used. For instance, a farmer may postpone a planned burn if the index indicates "Very Dangerous" or "Extremely Dangerous" conditions. For livestock farmers, it provides early warning of conditions that could increase the risk of runaway veld fires. This allows for timely decisions on relocating animals, reinforcing fire breaks, or alerting staff to be on standby during high-risk days.

**Data source and update frequency:**

This index is derived from observed daily weather data, updated on a near-real-time basis (typically with up to two days delay). Forecast data is available for up to 7 days ahead, with one map provided per day. Unlike other indices, there is no final summary map showing a 7-day total or average.

**Map interpretation:**

Fire danger levels are displayed using discrete colour-coded categories, with blue indicating Safe, green for Moderate, yellow for Dangerous, orange for Very Dangerous, and red for Extremely Dangerous conditions. Both the observed and forecast maps use these same categories and colour scheme, allowing users to easily compare current and expected fire danger across the region. The legend, located in the bottom-right corner of the map, provides a reference for interpreting the severity level represented by each colour.

Figures 22 and 23 show observed and forecasted fire danger conditions, respectively.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Fire-danger-observed.JPG" 
       alt="Fire-danger-observed" 
       width="800">
</p>

<p align="center">
Figure 22: Observed fire danger conditions for 13 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Fire-danger-forecast.JPG" 
       alt="Fire-danger-forecast" 
       width="800">
</p>

<p align="center">
Figure 23: Forecast fire danger conditions for 2 February 2026, representing Day 1 of the forecast issued on 2 February 2026.
</p>


### 5.5. Rain indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features five indices that describe daily and short-term historical rainfall patterns, offering insights into both recent rainfall activity and dry spells that may affect crops and livestock. All indices include observed data, updated on a near-real-time basis (typically with up to two days delay), while forecast data is available only for the daily rainfall index.

The indices included are:

### Daily rainfall

**Description:**

This index represents the total amount of rainfall recorded each day, measured in mm. It provides a daily map of observed rainfall conditions, as well as a 7-day forecast, helping users assess rainfall variability and track potential wet or dry spells.

**Agricultural relevance and practical application:**

Daily rainfall data is critical for both short-term operational decisions and longer-term planning. For crop farmers, it informs irrigation scheduling, planting and harvesting decisions, and assessments of soil moisture availability. For example, after receiving several consecutive days of rainfall, a farmer might delay further irrigation or plan field access carefully to avoid compaction. For livestock farmers, the index supports grazing management by indicating where pasture conditions may be improving or deteriorating. It also helps track the filling of watering points and alerts farmers to conditions that could lead to waterlogging or erosion, prompting actions such as moving animals from vulnerable areas.

**Data source and update frequency:**

The index is derived from observed daily rainfall data, updated on a near-real-time basis (typically with up to two days delay). Forecast data is available for up to 7 days ahead, provided as daily total rainfall values. The final forecast day includes the total accumulated rainfall expected over the full 7-day period.

**Map interpretation:**

The index is displayed as a colour gradient map, where no and low rainfall amounts appear in beige tones, with increasing rainfall totals shown in shades of light to dark blue, followed by purple and pink for the highest values. Both the observed and forecast maps use the same colour scheme and scale. The legend, located in the bottom-right corner of the map interface, shows rainfall amounts in mm.

An example of the observed daily rainfall is shown in Figure 24, while the corresponding forecast map is shown in Figure 25.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Daily-rainfall.JPG" 
       alt="Daily-rainfall" 
       width="800">
</p>

<p align="center">
Figure 24: Observed daily rainfall for 29 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Rain-forecast.JPG" 
       alt="Rain-forecast" 
       width="800">
</p>

<p align="center">
Figure 25: Daily rainfall total forecast for 2 February 2026, representing Day 1 of the forecast issued on 2 February 2026.
</p>


### Number of Rain days (last 30 days)

**Description:**

This index shows the total number of days with measurable rainfall (≥1 mm) over the past 30 days, based on observed data. It provides an overview of recent rainfall frequency, helping to assess whether an area has experienced consistently wet, variable, or dry conditions over the past month.

**Agricultural relevance and practical application:**

The frequency of rainfall plays a crucial role in soil moisture replenishment, pasture growth, and planning of field operations. For crop farmers, this index helps evaluate cumulative exposure to rain during key stages such as planting or vegetative growth. For example, an area with fewer than 5 rain days over the past month may prompt a farmer to delay planting or consider irrigation support. For livestock farmers, it aids in assessing forage availability and rangeland conditions. A high number of rain days may indicate good pasture growth, while a sharp decline in rainy days could serve as an early warning of drying, prompting changes in grazing rotation or water supply monitoring.

**Data source and update frequency:**

The index is derived from observed daily rainfall data, updated on a near-real-time basis (typically with a up to two days delay). For each date in the record, the value reflects the number of rain days during the 30 most recent days, recalculated daily.

**Map interpretation:**

The map uses a colour gradient, where areas with fewer rain days are shown in dark to light brown tones, and areas with more frequent rainfall appear in a mix of light to dark blue-green hues. The legend, located in the bottom-right corner of the map interface, indicates the number of rain days.

An example of the observed number of rain days for a 30-day period is shown in Figure 26.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Rain-days-last-30-days.JPG" 
       alt="Rain-days-last-30-days" 
       width="800">
</p>

<p align="center">
Figure 26: Observed number of rain days (last 30 days) for 29 January 2026, based on near-real-time data.
</p>

### Days since last rain (up to 60 days)

**Description:**

This index shows the number of days since the last measurable rainfall event (≥1 mm), based on observed data. It is capped at 60 days and updated daily. The index provides a useful indicator of how long an area has remained dry, which is critical for tracking emerging dry spells and short-term drought conditions.

**Agricultural relevance and practical application:**

This index helps farmers monitor the progression of dry periods and assess their impact on crops, pastures, and water availability. For crop farmers, it can guide decisions on irrigation timing, soil moisture conservation measures, or planting delays. For instance, if no rainfall has been recorded in over 30 days, a farmer may postpone planting rainfed crops or increase mulching to retain moisture. For livestock farmers, it supports decisions around grazing rotation and water supply. A prolonged dry spell may indicate declining pasture quality, prompting early destocking, movement of animals to better-grazed areas, or closer monitoring of borehole and dam levels.

**Data source and update frequency:**

This index is derived from observed daily rainfall data, updated on a near-real-time basis (typically with a up to two days delay). For each date, the value reflects the number of consecutive days without rainfall (≥1 mm) leading up to that day, up to a maximum of 60 days.

**Map interpretation:**

The map uses a colour gradient, where areas with fewer dry days appear in light brown to light blue-green tones, while areas with prolonged dryness (e.g., 40–60 days) are shown in medium to dark brown hues. The legend, located in the bottom-right corner of the map interface, indicates the number of dry days.

An example of the number of days since rainfall for a 60-day period is shown in Figure 27.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Days-since-rain-last-60-days.JPG" 
       alt="Days-since-rain-last-60-days" 
       width="800">
</p>

<p align="center">
Figure 27: Observed number of days since last rain (up to 60 days) for 29 January 2026, based on near-real-time data.
</p>

### Maximum daily rainfall (last 30 days)

**Description:**

This index represents the highest single-day rainfall total (in mm) recorded over the past 30 days, based on observed data. It highlights the most intense rainfall event during this period, providing insight into the potential for recent flood risk or heavy storm impact.

**Agricultural relevance and practical application:**

This index is useful for evaluating the effects of intense rainfall on agricultural systems. For crop farmers, it helps identify areas at risk of erosion, surface runoff, or waterlogging, all of which can damage soil structure and reduce plant health. For example, a farmer who observes a recent extreme rainfall event might inspect fields for ponding or adjust nutrient application schedules to account for leaching. For livestock farmers, the index supports decisions around grazing access and infrastructure maintenance. Heavy rainfall may limit access to paddocks, damage roads or fencing, or increase the risk of animals becoming trapped in wet conditions, prompting changes in movement plans or sheltering arrangements.

**Data source and update frequency:**

This index is derived from observed daily rainfall data, updated on a near-real-time basis (typically with a up to two days delay). For each day in the record, the value reflects the maximum recorded daily rainfall over the 30 most recent days, recalculated daily.

**Map interpretation:**

The map uses a colour gradient, where areas with lower maximum rainfall totals are shown in beige to light blue shades, and areas with higher maximum values appear in darker blue, purple, and pink tones. The legend, located in the bottom-right corner of the map interface, indicates rainfall amounts in mm.

An example of the observed maximum daily rainfall for a 30-day period is shown in Figure 28.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Max-rain-last-30-days.JPG" 
       alt="Max-rain-last-30-days" 
       width="800">
</p>

<p align="center">
Figure 28: Observed maximum daily rainfall (last 30 days) for 29 January 2026, based on near-real-time data.
</p>

### Total rainfall (last 10 and 30 days)

**Description:**

This index shows the cumulative rainfall total (in mm) recorded over the past 10 days and the past 30 days, based on observed data. It provides a simple measure of recent rainfall accumulation, which is important for tracking moisture availability over short to medium time frames.

**Agricultural relevance and practical application:**

Total accumulated rainfall is a key indicator of soil moisture availability and the overall wetness of an area. For crop farmers, this index supports decisions related to planting, irrigation scheduling, and crop water management, especially during early growth stages when moisture is critical. For example, a farmer may use this index to confirm whether conditions are favourable for sowing or whether additional watering is needed. For livestock farmers, the index helps assess rangeland condition and forage growth potential. A low 30-day rainfall total may signal the need to rotate grazing, supplement feed, or monitor watering points more closely to maintain herd health and prevent overgrazing.

**Data source and update frequency:**
This index is derived from observed daily rainfall data, updated on a near-real-time basis (typically with a up to two days delay). For each date in the record, the index displays the total rainfall accumulated over the most recent 10 or 30 days, recalculated daily.

**Map interpretation:**
The map uses a colour gradient, where lower total rainfall amounts are represented in beige to light blue shades, and higher totals appear in darker blue, purple, and pink tones. The legend, located in the bottom-right corner of the map interface, indicates the total rainfall in mm.

An example of the observed total rainfall for a 10-day and 30-day period are shown in Figure 29 and 30, respectively.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Total-rain-last-10-days.JPG" 
       alt="Total-rain-last-10-days" 
       width="800">
</p>

<p align="center">
Figure 29: Observed Total rainfall (last 10 days) for 29 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Total-rain-last-30-days.JPG" 
       alt="Total-rain-last-30-days" 
       width="800">
</p>

<p align="center">
Figure 30: Observed Total rainfall (last 30 days) for 29 January 2026, based on near-real-time data.
</p>

### 5.6. Evaportranspiration indices

[RETURN TO TOP](https://github.com/climindex/hydroclimsa/blob/main/App_user_guide/Weather_Risk_app_user_guide.md#weather-risk-app-user-guide)

This category features two indices that describe daily and short-term historical potential evapotranspiration (PET) patterns, providing insight into recent evaporation and crop water demand conditions that may affect farm operations and grazing resources. All indices include observed data, updated on a near-real-time basis (typically with a up to two days delay), while forecast data is available only for the daily PET index

The indices included are:

### Daily total potential evapotranspiration 

**Description:**
This index represents the daily total potential evapotranspiration (in mm), calculated using the Penman-Monteith equation. It estimates the maximum amount of water that could be evaporated and transpired from the land surface and crops on a given day under optimal conditions. The index provides a direct measure of daily atmospheric water demand, helping users understand how weather conditions influence short-term soil moisture loss and crop or pasture water requirements. Both observed daily values and a short-range forecast are provided.

**Agricultural relevance and practical application:**
Daily potential evapotranspiration is a useful indicator of short-term water demand in agricultural systems. For crop farmers, the index supports day-to-day irrigation planning by indicating how much water crops may require during hot, dry, or windy conditions. For example, a high daily potential evapotranspiration value may prompt a farmer to irrigate earlier or apply additional water to prevent moisture stress. For livestock farmers, the index provides insight into daily pasture drying rates and evaporation from watering points, supporting decisions around grazing management, supplemental feeding, and ensuring adequate water provision during periods of elevated atmospheric demand.

**Data source and update frequency:**
This index is derived from observed daily weather data and is updated on a near-real-time basis (typically with up to two days’ delay). Observed daily potential evapotranspiration values are calculated for each day in the record, while forecast potential evapotranspiration values are available for up to 7 days ahead and are displayed as daily totals. The final forecast day represents the average daily potential evapotranspiration over the full forecast period.

**Map interpretation:**
The daily potential evapotranspiration maps are displayed using a colour gradient, with lower potential evapotranspiration values shown in darker green and increasing values progressing through lighter green, yellow, and orange, with red indicating the highest daily atmospheric water demand. Both observed and forecast maps use the same colour scale, allowing for direct comparison between current conditions and expected short-term changes. The legend, located in the bottom-right corner of the map interface, indicates daily potential evapotranspiration values in mm.

An example of the observed daily potential evapotranspiration is shown in Figure 31, while the corresponding forecast map is shown in Figure 32.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/PET-observed.JPG" 
       alt="PET-observed" 
       width="800">
</p>

<p align="center">
Figure 31: Observed daily potential evapotranspiration for 29 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/PET-forecast.JPG" 
       alt="PET-forecast" 
       width="800">
</p>

<p align="center">
Figure 32: Forecast daily potential evapotranspiration for 2 February 2026, representing Day 1 of the forecast issued on 2 February 2026.
</p>


### Total potential evapotranspiration (last 10 and 30 Days)

**Description:**

This index represents the total potential evapotranspiration (in mm) calculated over the past 10 days and the past 30 days, using the Penman-Monteith equation. It estimates the maximum amount of water that could be evaporated and transpired from the land surface and crops under optimal conditions. It provides a simple measure of recent water demand, helping users assess how weather conditions may have influenced soil and crop water balance over short to medium time frames.

**Agricultural relevance and practical application:**
This index is key to understanding how much water crops and pasture would have needed under prevailing weather conditions. For crop farmers, it helps estimate crop water demand, informing irrigation scheduling and water resource allocation, especially during hot, dry, or windy periods. For example, if potential evapotranspiration values are high over a 10-day period, a farmer might increase irrigation frequency to prevent moisture stress. For livestock farmers, the index provides insight into pasture drying rates and evaporation from watering points. A high potential evapotranspiration value may indicate the need to rotate grazing sooner, adjust supplemental feeding, or increase monitoring of water availability during prolonged dry spells.

**Data source and update frequency:**

This index is derived from observed daily weather data, updated on a near-real-time basis (typically with up to two days delay). For each date in the record, the index displays the total potential evapotranspiration accumulated over the most recent 10 or 30 days, recalculated daily.

**Map interpretation:**

The map uses a colour gradient, where lower potential evapotranspiration totals appear in darker green. As potential evapotranspiration values increase, the colours shift through lighter green, yellow, and orange, culminating in red for the highest values. The legend, located in the bottom-right corner of the map interface, indicates the total potential evapotranspiration in mm
Examples of the observed total potential evapotranspiration for a 10-day and 30-day period are shown in Figure 33 and Figure 34, respectively.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/PET-last-10-days.JPG" 
       alt="PET-last-10-days" 
       width="800">
</p>

<p align="center">
Figure 33: Observed total potential evapotranspiration (last 10 days) for 29 January 2026, based on near-real-time data.
</p>

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/PET-last-30-days.JPG" 
       alt="PET-last-30-days" 
       width="800">
</p>

<p align="center">
Figure 34: Observed total potential evapotranspiration (last 30 days) for 29 January 2026, based on near-real-time data.
</p>


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

**Description:**

This index represents the total irrigated land area within each quaternary catchment, expressed as a percentage (%) of the catchment’s total area. It is based on the 2023 Field Crop Boundaries dataset developed by the Crop Estimates Consortium of the Department of Agriculture. The irrigated area is calculated using mapped field categories such as Pivot_Irrigation and Shadenet, and is summarised for each quaternary catchment. Areas with no recorded irrigation are shown as no data. This index provides insight into the spatial extent and intensity of irrigation activity across catchments.

**Agricultural relevance and practical application:**

For crop farmers, this index highlights the level of irrigation development in their region, which can help them assess potential competition for water resources and identify areas where irrigation investments are most concentrated. Extension officers and planners can use the index to understand regional water demand and to target advisory services where irrigation intensity is highest. For livestock farmers, the index offers indirect insights into how irrigation may influence forage availability, land use changes, or competition for water resources within shared catchments. For example, high irrigation intensity in an upstream catchment could signal reduced water availability for downstream watering points, requiring closer monitoring of livestock water supply.

**Data source and update frequency:**

The index is derived from the 2023 Field Crop Boundaries dataset produced by the Crop Estimates Consortium of the Department of Agriculture. As this is a static dataset, the index is not updated on a daily basis but will be revised when newer crop boundary datasets become available.

**Map interpretation:**

The map uses a graduated colour scheme, where lower percentages of irrigated area are displayed in light teal, increasing through medium to dark teal for the highest irrigation extents. Blank areas (no colour fill) represent catchments with no recorded irrigation. The legend, located in the bottom-right corner of the map interface, provides a reference for the percentage of catchment area under irrigation.

The index of irrigation extent per quaternary catchment is shown in Figure 35.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Irrigated-land.JPG" 
       alt="Irrigated-land" 
       width="800">
</p>

<p align="center">
Figure 35: Irrigation extent per quaternary catchment for 2023.
</p>


### Blue water irrigation demand

**Description:**

This index estimates the monthly irrigation water demand by calculating the difference between actual evapotranspiration (ETa) and rainfall within each quaternary catchment. It uses satellite-derived data, with actual evapotranspiration from the MODIS MOD16A2GF product and monthly rainfall totals from the CHIRPS. The datasets were processed in Google Earth Engine for the period 2000 to 2023, with CHIRPS rainfall reprojected to match MODIS resolution to ensure spatial consistency. Long-term monthly averages were calculated, and the difference between actual evapotranspiration and rainfall was summarised for quaternary catchments. Positive values (mm/month) indicate that crop water requirements exceed rainfall, signalling reliance on surface or groundwater resources for irrigation, while negative values (mm/month) indicate that rainfall exceeds actual evapotranspiration.

**Agricultural relevance and practical application:**

This index highlights the extent to which irrigation is needed to meet crop water demands. For crop farmers, it supports irrigation scheduling and planning, particularly during periods of below-average rainfall or high evapotranspiration. For example, a large positive value in a given month indicates substantial reliance on irrigation, prompting farmers to secure adequate water allocations or adjust planting strategies. Extension officers and water managers can use the index to identify regions with high irrigation demand, informing policies for sustainable water use. Livestock farmers may also benefit indirectly, as areas of high irrigation demand may increase competition for water resources within shared catchments.

**Data source and update frequency:**
The index is derived from MODIS MOD16A2GF (actual evapotranspiration) and CHIRPS rainfall, processed in Google Earth Engine for 2000–2023 and reprojected to the MODIS resolution for spatial consistency. It is a static, month-specific layer (mm/month) representing the long-term mean difference (actual evapotranspiration − rainfall) for each calendar month. Layers are updated on an ad hoc basis when newer inputs or methods become available; there is no routine monthly refresh.

**Map interpretation:**

The map uses a diverging colour scale to represent monthly irrigation water demand. Negative values, where rainfall exceeds actual evapotranspiration, are shown in light blue, indicating a relative moisture surplus. Positive values, where evapotranspiration exceeds rainfall and irrigation is required, are displayed using a colour scale that transitions from yellow through orange to dark red, with darker red shades indicating higher irrigation demand. The legend, located in the bottom-right corner of the map interface, provides a reference for irrigation water demand expressed in mm/month.

An example of blue water irrigation demand is shown in Figure 36.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Water-demand.JPG" 
       alt="Water-demand" 
       width="800">
</p>

<p align="center">
Figure 36: Average blue water irrigation demand (mm/month) for January for 2000-2023.
</p>

### Monthly surface water anomaly

**Description:**

This index shows how much the surface water area for a given month differs from the average surface water area for the same month over the period January 2016 to the present, expressed as a percentage (%). The surface water area used to calculate the anomalies is mapped monthly by GeoTerraImage and EkoSource using Sentinel-2 satellite imagery, with data accessed through the SANSA. By comparing current water extent to the long-term monthly average, the index highlights whether surface water bodies, such as farm dams, are above or below normal levels for the time of year.

**Agricultural relevance and practical application:**

For crop farmers, the index serves as a valuable indicator of local water availability for irrigation, supporting planting decisions and drought risk management. For livestock farmers, it provides an early warning of potential water shortages or surpluses, helping guide grazing rotation, stock watering, and livestock movement, particularly during unusually dry or wet months.

**Data source and update frequency:**

The index is based on monthly surface water maps produced from Sentinel-2 satellite imagery by GeoTerraImage and EkoSource, accessed via SANSA. It is updated on a monthly basis, with new data typically released around the 15th of each month.

**Map interpretation:**

The map uses a diverging colour scheme. Positive anomalies (surface water above average) are shown in blue shades, with darker blues representing larger surpluses. Negative anomalies (surface water below average) are displayed in red shades, with darker reds indicating larger deficits. The legend, located in the bottom-right corner of the map interface, provides a reference for surface water anomaly values expressed as percentages (%).

An example of monthly surface water anomaly is shown in Figure 37.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Surface-water-anomaly.JPG" 
       alt="Surface-water-anomaly" 
       width="800">
</p>

<p align="center">
Figure 37: Average monthly surface water anomaly (%) for December 2025.
</p>

### Groundwater harvest potential

**Description:**
The Groundwater Harvest Potential Index estimates the maximum volume of groundwater that can be sustainably abstracted per square kilometre per year (m<sup>3</sup>.km<sup>2</sup>.a) without depleting an aquifer. It represents the long-term safe yield of groundwater resources under average conditions and reflects factors such as aquifer storage, typical recharge rates, and the time between recharge events. The index provides a spatial overview of groundwater availability and indicates where groundwater can be used as a reliable water source without compromising long-term aquifer sustainability.

**Agricultural relevance and practical application:**
This index supports strategic water-availability planning in agricultural systems. For crop farmers, it helps assess the potential reliability of groundwater as a supplementary or primary irrigation source, particularly during periods of low rainfall or high surface-water demand, and can inform longer-term decisions around crop selection, irrigation infrastructure, and water allocation. For livestock and mixed farming systems, the index provides insight into the resilience of groundwater supplies for stock watering. Extension officers and water managers may also use the index to identify areas where groundwater development is more feasible and to support sustainable groundwater use planning at a catchment scale.

**Data source and update frequency:**
The index was developed by the South African Department of Water and Sanitation and is based on national-scale groundwater assessments. It reflects long-term average conditions and was last updated in 2012. The index is a static spatial layer and is not updated on a routine basis.

**Map interpretation:**
The map displays groundwater harvest potential using a continuous colour scale, where lower values are shown in red, transitioning through orange, yellow, green, and light blue, to dark blue for higher groundwater availability. Higher values indicate greater sustainable groundwater abstraction potential per square kilometre per year. Areas with limited or no mapped groundwater potential may appear with very low values or no colour fill. The legend, located in the bottom-right corner of the map interface, indicates groundwater harvest potential expressed in m<sup>3</sup>.km<sup>2</sup>.a.

The groundwater harvest potential index is shown in Figure 38.

<p align="center">
  <img src="https://github.com/climindex/hydroclimsa/blob/main/Figures/Groundwater-harvest-potential.JPG" 
       alt="Groundwater-harvest-potential" 
       width="800">
</p>

<p align="center">
Figure 38: Groundwater harvest potential, showing the estimated sustainable groundwater abstraction potential under average conditions.
</p>


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

