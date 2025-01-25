module CR # Capacity Credit Revamped for RSET Revisions

using Random, CSV, DataFrames, DelimitedFiles, StatsBase, Statistics, Parameters, Measures, WAV

csvimport1 = CSV.read("EFORd_reference_sheet_07_15_22.csv", DataFrame) 
csvimport2 = CSV.read("All_NonVRE_and_hydro_2018_abridged.csv", DataFrame) # Generator specifications for non-VREs and hydro plants
#csv_hydro = CSV.read("All_hydro_generators_2018_abridged.csv", DataFrame) # Generator specifications for hydro plants

energy_tech = csvimport2[!,5]
cap_MW = csvimport2[!,4]
ref_eford = csvimport1[!,3]

function category # new categories of technologies
    #= Combined Cycle
    - Natural Gas Fired Combined Cycle
    =#

    #= Fossil All Fuel
    - Municipal Solid Waste
    - Natural Gas Steam Turbine
    - Other Waste Biomass
    - Wood/Wood Waste Biomass
    =#
    #= Fossil Oil Primary
    - Petroleum Coke
    - Petroleum Liquids
    =#

    #= Coal Primary
    - Conventional Steam Coal
    - Coal Integrated Gasification Combined Cycle
    =#

    #= Nuclear PWR
    - Nuclear
    =#

    #= Gas Turbine
    - Landfill Gas
    - Natural Gas Fired Combustion Turbine
    - Natural Gas Internal Combustion Engine
    - Other Gases
    - Other Natural Gas
    =#

    #= Hydro
    - Conventional Hydroelectric
    - Hydroelectric Pumped Storage
    =#


end

new_cat = fill("place_holder", length(energy_tech))
for i = 1:length(new_cat)
    if contains(energy_tech[i], "Natural Gas Fired Combined Cycle")
        new_cat[i] = "Combined Cycle"
    elseif contains(energy_tech[i],"Municipal Solid Waste") || 
        contains(energy_tech[i],"Natural Gas Steam Turbine") ||
        contains(energy_tech[i], "Other Waste Biomass") ||
        contains(energy_tech[i], "Wood/Wood Waste Biomass")
        new_cat[i] = "Fossil All Fuel Types"
    elseif contains(energy_tech[i], "Petroleum Coke") ||
        contains(energy_tech[i], "Petroleum Liquids")
        new_cat[i] = "Fossil Oil Primary"
    elseif contains(energy_tech[i],"Conventional Steam Coal") ||
        contains(energy_tech[i],"Coal Integrated Gasification Combined Cycle")
        new_cat[i] = "Fossil Coal Primary"
    elseif contains(energy_tech[i], "Nuclear")
        new_cat[i] = "Nuclear PWR"
    elseif contains(energy_tech[i],"Conventional Hydroelectric") ||  #hydro recategorization between EFORd reference and technology descriptions
        contains(energy_tech[i], "Hydroelectric Pumped Storage")
        new_cat[i] = "Hydro"
    else 
        new_cat[i] = "Gas Turbine"
    end

end

range_MW = fill("place_holder", length(energy_tech))  # This placeholder categorization works for most dispatchable resource types, but not match exactly the unique ranges
for i = 1:length(range_MW)
    if cap_MW[i] ≥ 1000
        range_MW[i] = "1000 Plus" 
    elseif cap_MW[i] ≥ 800
        range_MW[i] = "800-999"
    elseif cap_MW[i] ≥ 600
        range_MW[i] = "600-799"
    elseif cap_MW[i] ≥ 400
        range_MW[i] = "400-599"
    elseif cap_MW[i] ≥ 300
        range_MW[i] = "300-399"
    elseif cap_MW[i] ≥ 200
        range_MW[i] = "200-299"
    elseif cap_MW[i] ≥ 100
        range_MW[i] = "100-199"
    else cap_MW[i] ≥ 0
        range_MW[i] = "0-099"
    end
end

e_value = zeros(length(energy_tech))
for i = 1:length(e_value)
    if contains(new_cat[i],"Combined Cycle")
        e_value[i] = ref_eford[35]
    elseif contains(new_cat[i],"Hydro")  # New hydro EFORd catergorization
        if cap_MW[i] ≥ 30
            e_value[i] = ref_eford[38]
        elseif cap_MW[i] ≥ 0
            e_value[i] = ref_eford[37]
        end
    elseif contains(new_cat[i],"Gas Turbine")
        if cap_MW[i] ≥ 50
            e_value[i] = ref_eford[34] 
        elseif cap_MW[i] ≥ 20
            e_value[i] = ref_eford[33]
        elseif cap_MW[i] ≥ 0
            e_value[i] = ref_eford[32]
        end
    elseif contains(new_cat[i], "Nuclear PWR")
        if cap_MW[i] ≥ 1000
            e_value[i] = ref_eford[30] 
        elseif cap_MW[i] ≥ 800
            e_value[i] = ref_eford[29]
        elseif cap_MW[i] ≥ 400
            e_value[i] = ref_eford[28]
        else
            e_value[i] = ref_eford[27]
        end
    elseif contains(new_cat[i], "Fossil Oil Primary")
        if cap_MW[i] ≥ 800
            e_value[i] = ref_eford[26] 
        elseif cap_MW[i] ≥ 600
            e_value[i] = ref_eford[25]
        elseif cap_MW[i] ≥ 400
            e_value[i] = ref_eford[24]
        elseif cap_MW[i] ≥ 300
            e_value[i] = ref_eford[23]    
        elseif cap_MW[i] ≥ 200
            e_value[i] = ref_eford[22]
        elseif cap_MW[i] ≥ 100
            e_value[i] = ref_eford[21]
        elseif cap_MW[i] ≥ 0
            e_value[i] = ref_eford[20]
        end
    elseif contains(new_cat[i], "Fossil Coal Primary")
        if cap_MW[i] ≥ 1000
            e_value[i] = ref_eford[18] 
        elseif cap_MW[i] ≥ 800
            e_value[i] = ref_eford[17]
        elseif cap_MW[i] ≥ 600
            e_value[i] = ref_eford[16]
        elseif cap_MW[i] ≥ 400
            e_value[i] = ref_eford[15]    
        elseif cap_MW[i] ≥ 300
            e_value[i] = ref_eford[14]
        elseif cap_MW[i] ≥ 200
            e_value[i] = ref_eford[13]
        elseif cap_MW[i] ≥ 100
            e_value[i] = ref_eford[12]
        elseif cap_MW[i] ≥ 0
            e_value[i] = ref_eford[11]
        end
    elseif contains(new_cat[i], "Fossil All Fuel Types")
        if cap_MW[i] ≥ 1000
            e_value[i] = ref_eford[9] 
        elseif cap_MW[i] ≥ 800
            e_value[i] = ref_eford[8]
        elseif cap_MW[i] ≥ 600
            e_value[i] = ref_eford[7]
        elseif cap_MW[i] ≥ 400
            e_value[i] = ref_eford[6]    
        elseif cap_MW[i] ≥ 300
            e_value[i] = ref_eford[5]
        elseif cap_MW[i] ≥ 200
            e_value[i] = ref_eford[4]
        elseif cap_MW[i] ≥ 100
            e_value[i] = ref_eford[3]
        elseif cap_MW[i] ≥ 0
            e_value[i] = ref_eford[2]
        end
    end
end

struct Plant
    plant_ID
    oeo_region
    tech_description
    capacity_MW
    new_tech_category
    size_range
    eford_value
end

data = Plant((csvimport2[!,2]), (csvimport2[!,6]),(csvimport2[!,5]),
(csvimport2[!,4]),new_cat,range_MW,e_value)

data_df = DataFrame(Plant_ID = (data.plant_ID),
    OEO_Region = (data.oeo_region),
    Technology_Desciption = (data.tech_description),
    Capacity_in_MW = (data.capacity_MW),
    NewTech_Category = (data.new_tech_category),
    Nameplate_Cap_Range = (data.size_range),
    Corresponding_EFORd = (data.eford_value/100) #divide EFORd values for later calculation
)
#CSV.write("Dispatchable_plant_df.csv", data_df)

CA_gen_specs = filter(row -> row.OEO_Region ∈ ["CA"], data_df)
CEN_gen_specs = filter(row -> row.OEO_Region ∈ ["CEN"], data_df)
MID_AT_gen_specs = filter(row -> row.OEO_Region ∈ ["MID_AT"], data_df)
NE_gen_specs = filter(row -> row.OEO_Region ∈ ["NE"], data_df)
NW_gen_specs = filter(row -> row.OEO_Region ∈ ["NW"], data_df)
N_CEN_gen_specs = filter(row -> row.OEO_Region ∈ ["N_CEN"], data_df)
SE_gen_specs = filter(row -> row.OEO_Region ∈ ["SE"], data_df)
SW_gen_specs = filter(row -> row.OEO_Region ∈ ["SW"], data_df)
TX_gen_specs = filter(row -> row.OEO_Region ∈ ["TX"], data_df)


#--- Detection of cluster number for each source and region -->

#csvimport3 = CSV.read("renewables_capacity_factors_PG.csv",DataFrame)
csvimport3 = CSV.read("OEO_renewables_clusters.csv",DataFrame)
CF_headers = String.(names(csvimport3))

init_count = 0
NE_PV_count = init_count; NE_WND_count = init_count; NE_OFWND_count = init_count;
CA_PV_count = init_count; CA_WND_count = init_count; CA_OFWND_count = init_count;
NW_PV_count = init_count; NW_WND_count = init_count; NW_OFWND_count = init_count;
CEN_PV_count = init_count; CEN_WND_count = init_count; CEN_OFWND_count = init_count;
MID_AT_PV_count = init_count; MID_AT_WND_count = init_count; MID_AT_OFWND_count = init_count;
N_CEN_PV_count = init_count; N_CEN_WND_count = init_count; N_CEN_OFWND_count = init_count;
SE_PV_count = init_count; SE_WND_count = init_count; SE_OFWND_count = init_count;
SW_PV_count = init_count; SW_WND_count = init_count; SW_OFWND_count = init_count;
TX_PV_count = init_count; TX_WND_count = init_count; TX_OFWND_count = init_count;

#name order is WND, PV, OFWND
CA_clus_names = []
CEN_clus_names = []
MID_AT_clus_names = []
NE_clus_names = []
NW_clus_names = []
N_CEN_clus_names = []
SE_clus_names = []
SW_clus_names = []
TX_clus_names = []

#-- Existing renewable capacities --------------->
# -> The [1] is necessary to output the integer from the 1-element vector array

E_PV_NE = csvimport3[!,indexin(["E_SOLPV_R_1_NE"],CF_headers)[1]] # E_SOLPV_R_1_NE
E_PV_CA = csvimport3[!,indexin(["E_SOLPV_R_1_CA"],CF_headers)[1]] # E_SOLPV_R_1_CA
E_PV_NW = csvimport3[!,indexin(["E_SOLPV_R_1_NW"],CF_headers)[1]] # E_SOLPV_R_1_NW
E_PV_CEN = csvimport3[!,indexin(["E_SOLPV_R_1_CEN"],CF_headers)[1]] # E_SOLPV_R_1_CEN
E_PV_MID_AT = csvimport3[!,indexin(["E_SOLPV_R_1_MID_AT"],CF_headers)[1]] # E_SOLPV_R_1_MID_AT
E_PV_N_CEN = csvimport3[!,indexin(["E_SOLPV_R_1_N_CEN"],CF_headers)[1]] # E_SOLPV_R_1_N_CEN
E_PV_SE = csvimport3[!,indexin(["E_SOLPV_R_1_SE"],CF_headers)[1]] # E_SOLPV_R_1_SE
E_PV_SW = csvimport3[!,indexin(["E_SOLPV_R_1_SW"],CF_headers)[1]] # E_SOLPV_R_1_SW
E_PV_TX = csvimport3[!,indexin(["E_SOLPV_R_1_TX"],CF_headers)[1]] # E_SOLPV_R_1_TX

E_WND_NE = csvimport3[!,indexin(["E_WND_R_1_NE"],CF_headers)[1]] # E_WND_R_1_NE
E_WND_CA = csvimport3[!,indexin(["E_WND_R_1_CA"],CF_headers)[1]] # E_WND_R_1_CA
E_WND_NW = csvimport3[!,indexin(["E_WND_R_1_NW"],CF_headers)[1]] # E_WND_R_1_NW
E_WND_CEN = csvimport3[!,indexin(["E_WND_R_1_CEN"],CF_headers)[1]] # E_WND_R_1_CEN
E_WND_MID_AT = csvimport3[!,indexin(["E_WND_R_1_MID_AT"],CF_headers)[1]] # E_WND_R_1_MID_AT
E_WND_N_CEN = csvimport3[!,indexin(["E_WND_R_1_N_CEN"],CF_headers)[1]] # E_WND_R_1_N_CEN
E_WND_SE = csvimport3[!,indexin(["E_WND_R_1_SE"],CF_headers)[1]] # E_WND_R_1_SE
E_WND_SW = csvimport3[!,indexin(["E_WND_R_1_SW"],CF_headers)[1]] # E_WND_R_1_SW
E_WND_TX = csvimport3[!,indexin(["E_WND_R_1_TX"],CF_headers)[1]] # E_WND_R_1_TX

E_OFWND_all = zeros(length(E_WND_CA)) #no existing offshore wind capacity factors

a_series = DataFrame() # CA New wind 
b_series = DataFrame() # CA New solar
c_series = DataFrame() # CA New offshore wind 
d_series = DataFrame() # NW New wind 
e_series = DataFrame() # NW New solar
f_series = DataFrame() # NW New offshore wind 
g_series = DataFrame() # SW New wind
h_series = DataFrame() # SW New solar
i_series = DataFrame() # TX New wind
j_series = DataFrame() # TX New solar
k_series = DataFrame() # N_CEN New wind
l_series = DataFrame() # N_CEN New solar
m_series = DataFrame() # CEN New wind
n_series = DataFrame() # CEN New solar
o_series = DataFrame() # SE New wind
p_series = DataFrame() # SE New solar
q_series = DataFrame() # MID_AT New wind
r_series = DataFrame() # MID_AT New solar
s_series = DataFrame() # NE New wind
t_series = DataFrame() # NE New solar
u_series = DataFrame() # NE New offshore wind

nnow_series = DataFrame(No_New_Off_Wind = (E_OFWND_all))

# Sort out WND cluster title names
for i in 1:length(CF_headers)
    if contains(CF_headers[i],"_WND_N")
        if contains(CF_headers[i],"_CA")
            new_name = CF_headers[i]
            append!(CA_clus_names,[new_name])
            global CA_WND_count +=1
            colname = string("a$i") #series column titles
            a_series[!,colname] = csvimport3[!,i]
        elseif contains(CF_headers[i],"_NW")
            new_name = CF_headers[i]
            append!(NW_clus_names,[new_name])
            global NW_WND_count +=1
            colname = string("d$i") #series column titles
            d_series[!,colname] = csvimport3[!,i]
        elseif contains(CF_headers[i],"_MID_AT")
            new_name = CF_headers[i]
            append!(MID_AT_clus_names,[new_name])
            global MID_AT_WND_count +=1 
            colname = string("q$i") #series column titles  
            q_series[!,colname] = csvimport3[!,i]
        elseif contains(CF_headers[i],"_SE")
            new_name = CF_headers[i]
            append!(SE_clus_names,[new_name])
            global SE_WND_count +=1  
            colname = string("o$i") #series column titles
            o_series[!,colname] = csvimport3[!,i]
        elseif contains(CF_headers[i],"_SW")
            new_name = CF_headers[i]
            append!(SW_clus_names,[new_name])
            global SW_WND_count +=1
            colname = string("g$i") #series column titles
            g_series[!,colname] = csvimport3[!,i]
        elseif contains(CF_headers[i],"_TX")
            new_name = CF_headers[i]
            append!(TX_clus_names,[new_name])
            global TX_WND_count +=1 
            colname = string("i$i") #series column titles
            i_series[!,colname] = csvimport3[!,i]
        elseif contains(CF_headers[i],"N_CEN")
            new_name = CF_headers[i]
            append!(N_CEN_clus_names,[new_name])
            global N_CEN_WND_count +=1
            colname = string("k$i") #series column titles
            k_series[!,colname] = csvimport3[!,i]
            
        else
            if  contains(CF_headers[i],"_CEN") # to account for Nebraska and New England mix up
                new_name = CF_headers[i]
                append!(CEN_clus_names,[new_name])
                global CEN_WND_count +=1
                colname = string("m$i") #series column titles
                m_series[!,colname] = csvimport3[!,i]
                
            else #should have just New England values
                new_name = CF_headers[i]
                append!(NE_clus_names,[new_name])
                global NE_WND_count +=1
                colname = string("s$i") #series column titles
                s_series[!,colname] = csvimport3[!,i]
            end
        end
    end
end

# Sort out PV cluster title names
for i in 1:length(CF_headers)
    if contains(CF_headers[i],"_SOLPVCEN_N")
        if contains(CF_headers[i],"_CA")
            new_name = CF_headers[i]
            append!(CA_clus_names,[new_name])
            global CA_PV_count +=1
            colname = string("b$i") #series column titles
            b_series[!,colname] = csvimport3[!,i]
        
        elseif contains(CF_headers[i],"_NW")
            new_name = CF_headers[i]
            append!(NW_clus_names,[new_name])
            global NW_PV_count +=1
            colname = string("e$i") #series column titles
            e_series[!,colname] = csvimport3[!,i]
            
        elseif contains(CF_headers[i],"_MID_AT")
            new_name = CF_headers[i]
            append!(MID_AT_clus_names,[new_name])
            global MID_AT_PV_count +=1
            colname = string("r$i") #series column titles
            r_series[!,colname] = csvimport3[!,i]
                
        elseif contains(CF_headers[i],"_SE")
            new_name = CF_headers[i]
            append!(SE_clus_names,[new_name])
            global SE_PV_count +=1     
            colname = string("p$i") #series column titles
            p_series[!,colname] = csvimport3[!,i]
            
        elseif contains(CF_headers[i],"_SW")
            new_name = CF_headers[i]
            append!(SW_clus_names,[new_name])
            global SW_PV_count +=1
            colname = string("h$i") #series column titles
            h_series[!,colname] = csvimport3[!,i]
            
        elseif contains(CF_headers[i],"_TX")
            new_name = CF_headers[i]
            append!(TX_clus_names,[new_name])
            global TX_PV_count +=1 
            colname = string("j$i") #series column titles
            j_series[!,colname] = csvimport3[!,i]
        
        elseif contains(CF_headers[i],"N_CEN")
            new_name = CF_headers[i]
            append!(N_CEN_clus_names,[new_name])
            global N_CEN_PV_count +=1
            colname = string("l$i") #series column titles
            l_series[!,colname] = csvimport3[!,i]
            
        else
            if contains(CF_headers[i],"_CEN") # to account for Nebraska and New England mix up
                new_name = CF_headers[i]
                append!(CEN_clus_names,[new_name])
                global CEN_PV_count +=1
                colname = string("n$i") #series column titles
                n_series[!,colname] = csvimport3[!,i]
            
            else # should just have New England values
                new_name = CF_headers[i]
                append!(NE_clus_names,[new_name])
                global NE_PV_count +=1
                colname = string("t$i") #series column titles
                t_series[!,colname] = csvimport3[!,i]
                
            end
        end
    end
end

# Sort out OFWND cluster title names
for i in 1:length(CF_headers)
    if contains(CF_headers[i],"_OFWND_N")
        if contains(CF_headers[i],"_CA")
            new_name = CF_headers[i]
            append!(CA_clus_names,[new_name])
            global CA_OFWND_count +=1
            colname = string("c$i") #series column titles
            c_series[!,colname] = csvimport3[!,i]
            
        elseif contains(CF_headers[i],"_NW")
            new_name = CF_headers[i]
            append!(NW_clus_names,[new_name])
            global NW_OFWND_count +=1
            colname = string("f$i") #series column titles
            f_series[!,colname] = csvimport3[!,i]
            
        elseif contains(CF_headers[i],"_MID_AT")
            new_name = CF_headers[i]
            append!(MID_AT_clus_names,[new_name])
            global MID_AT_OFWND_count +=1  
            # no given existing offshore wind
            
        elseif contains(CF_headers[i],"_SE")
            new_name = CF_headers[i]
            append!(SE_clus_names,[new_name])
            global SE_OFWND_count +=1 
            # no given existing offshore wind
            
        elseif contains(CF_headers[i],"_SW")
            new_name = CF_headers[i]
            append!(SW_clus_names,[new_name])
            global SW_OFWND_count +=1
            # no given existing offshore wind
        
        elseif contains(CF_headers[i],"_TX")
            new_name = CF_headers[i]
            append!(TX_clus_names,[new_name])
            global TX_OFWND_count +=1 
            # no given existing offshore wind
        
        elseif contains(CF_headers[i],"N_CEN")
            new_name = CF_headers[i]
            append!(N_CEN_clus_names,[new_name])
            global N_CEN_OFWND_count +=1
            # no given existing offshore wind
        else
            if contains(CF_headers[i],"_CEN") # to account for Nebraska and New England mix up
                new_name = CF_headers[i]
                append!(CEN_clus_names,[new_name])
                global CEN_OFWND_count +=1
                # no given existing offshore wind
            else # should just have New England values
                new_name = CF_headers[i]
                append!(NE_clus_names,[new_name])
                global NE_OFWND_count +=1
                colname = string("u$i") #series column titles
                u_series[!,colname] = csvimport3[!,i]
                
            end
        end
    end
end

CA_name = "CA"
CEN_name = "CEN"
MID_AT_name = "MID_AT"
NE_name = "NE"
NW_name = "NW"
N_CEN_name = "N_CEN"
SE_name = "SE"
SW_name = "SW"
TX_name = "TX"

function additional_cluster_names(region_name, clus_name_array) # Used for various median and mean blends
    append!(clus_name_array,[region_name*"_med_bl_0_100"])
    append!(clus_name_array,[region_name*"_med_bl_20_80"])
    append!(clus_name_array,[region_name*"_med_bl_40_60"])
    append!(clus_name_array,[region_name*"_med_bl_50_50"])
    append!(clus_name_array,[region_name*"_med_bl_60_40"])
    append!(clus_name_array,[region_name*"_med_bl_80_20"])
    append!(clus_name_array,[region_name*"_med_bl_100_0"])

    append!(clus_name_array,[region_name*"_mn_bl_0_100"])
    append!(clus_name_array,[region_name*"_mn_bl_20_80"])
    append!(clus_name_array,[region_name*"_mn_bl_40_60"])
    append!(clus_name_array,[region_name*"_mn_bl_50_50"])
    append!(clus_name_array,[region_name*"_mn_bl_60_40"])
    append!(clus_name_array,[region_name*"_mn_bl_80_20"])
    append!(clus_name_array,[region_name*"_mn_bl_100_0"])
end

additional_cluster_names(CA_name, CA_clus_names)
additional_cluster_names(CEN_name, CEN_clus_names)
additional_cluster_names(MID_AT_name, MID_AT_clus_names)
additional_cluster_names(NE_name, NE_clus_names)
additional_cluster_names(NW_name, NW_clus_names)
additional_cluster_names(N_CEN_name, N_CEN_clus_names)
additional_cluster_names(SE_name, SE_clus_names)
additional_cluster_names(SW_name, SW_clus_names)
additional_cluster_names(TX_name, TX_clus_names)


regions = ["NE","CA","NW","CEN","MID_AT","N_CEN","SE","SW","TX"]
PV_counts = [NE_PV_count,CA_PV_count,NW_PV_count,CEN_PV_count,MID_AT_PV_count,N_CEN_PV_count,SE_PV_count,SW_PV_count,TX_PV_count]
WND_counts = [NE_WND_count,CA_WND_count,NW_WND_count,CEN_WND_count,MID_AT_WND_count,N_CEN_WND_count,SE_WND_count,SW_WND_count,TX_WND_count]
OFWND_counts = [NE_OFWND_count,CA_OFWND_count,NW_OFWND_count,CEN_OFWND_count,MID_AT_OFWND_count,N_CEN_OFWND_count,SE_OFWND_count,SW_OFWND_count,TX_OFWND_count]
    
counts = DataFrame(Regions = (regions), WND_clus =(WND_counts), PV_clus = (PV_counts), OFWND = (OFWND_counts)) 

NE_reg_counts = [NE_WND_count, NE_PV_count, NE_OFWND_count]
CA_reg_counts = [CA_WND_count, CA_PV_count, CA_OFWND_count]
NW_reg_counts = [NW_WND_count, NW_PV_count, NW_OFWND_count]
CEN_reg_counts = [CEN_WND_count, CEN_PV_count, CEN_OFWND_count]
MID_AT_reg_counts = [MID_AT_WND_count, MID_AT_PV_count, MID_AT_OFWND_count]
N_CEN_reg_counts = [N_CEN_WND_count, N_CEN_PV_count, N_CEN_OFWND_count]
SE_reg_counts = [SE_WND_count, SE_PV_count, SE_OFWND_count]
SW_reg_counts = [SW_WND_count, SW_PV_count, SW_OFWND_count]
TX_reg_counts = [TX_WND_count, TX_PV_count, TX_OFWND_count]

#= 
To be able to produce resource blend graphs, mean and median 
capacity factors are solved for from each of the clusters
=#
function series_CF_median_mean(series) 
    series[!,:"CF_median"] =  median.(eachrow(series))
    series[!,:"CF_mean"] =  mean.(eachrow(series))
end

series_CF_median_mean(a_series)
series_CF_median_mean(b_series)
series_CF_median_mean(c_series)
series_CF_median_mean(d_series)
series_CF_median_mean(e_series)
series_CF_median_mean(f_series)
series_CF_median_mean(g_series)
series_CF_median_mean(h_series)
series_CF_median_mean(i_series)
series_CF_median_mean(j_series)
series_CF_median_mean(k_series)
series_CF_median_mean(l_series)
series_CF_median_mean(m_series)
series_CF_median_mean(n_series)
series_CF_median_mean(o_series)
series_CF_median_mean(p_series)
series_CF_median_mean(q_series)
series_CF_median_mean(r_series)
series_CF_median_mean(s_series)
series_CF_median_mean(t_series)
series_CF_median_mean(u_series)


#--- New renewable capacity factors ----------->


# We assume the following file to be demand (8760 hours)
csvimport4 = CSV.read("Temoa_settings_25c_load_curves.csv", DataFrame)
dem_headers = String.(names(csvimport4))

CA_demand = csvimport4[!,indexin(["CA"],dem_headers)[1]]
CEN_demand = csvimport4[!,indexin(["CEN"],dem_headers)[1]]
MID_AT_demand = csvimport4[!,indexin(["MID_AT"],dem_headers)[1]]
NE_demand = csvimport4[!,indexin(["NE"],dem_headers)[1]]
NW_demand = csvimport4[!,indexin(["NW"],dem_headers)[1]]
N_CEN_demand = csvimport4[!,indexin(["N_CEN"],dem_headers)[1]]
SE_demand = csvimport4[!,indexin(["SE"],dem_headers)[1]]
SW_demand = csvimport4[!,indexin(["SW"],dem_headers)[1]]
TX_demand = csvimport4[!,indexin(["TX"],dem_headers)[1]]
place_holder_demand = zeros(length(CA_demand)) #all demand arrays are same length


csvimport5 = CSV.read("All_VRE_generators_2018_abridged.csv", DataFrame)
#Filter through this array

struct VRE_Plant
    oeo_region
    capacity_MW
    tech_description
end

data2 = VRE_Plant((csvimport5[!,6]), (csvimport5[!,4]), (csvimport5[!,5]))

data_df2 = DataFrame(OEO_Region = (data2.oeo_region),
    Capacity_in_MW = (data2.capacity_MW),
    Tech_Description = (data2.tech_description)
)

CA_VRE_gen = filter(row -> row.OEO_Region ∈ ["CA"], data_df2)
CEN_VRE_gen = filter(row -> row.OEO_Region ∈ ["CEN"], data_df2)
MID_AT_VRE_gen = filter(row -> row.OEO_Region ∈ ["MID_AT"], data_df2)

NE_VRE_gen = filter(row -> row.OEO_Region ∈ ["NE"], data_df2)
NE_VRE_cap = sum(NE_VRE_gen[!,2]) # Capacity for VRE plants

NW_VRE_gen = filter(row -> row.OEO_Region ∈ ["NW"], data_df2)
N_CEN_VRE_gen = filter(row -> row.OEO_Region ∈ ["N_CEN"], data_df2)
SE_VRE_gen = filter(row -> row.OEO_Region ∈ ["SE"], data_df2)
SW_VRE_gen = filter(row -> row.OEO_Region ∈ ["SW"], data_df2)
TX_VRE_gen = filter(row -> row.OEO_Region ∈ ["TX"], data_df2)


CA_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], CA_VRE_gen)
CA_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], CA_VRE_gen)
CA_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], CA_VRE_gen)
CA_solar_cap = sum(CA_Solar_gen[!,2])
CA_on_wind_cap = sum(CA_Onshore_wind_gen[!,2])
CA_off_wind_cap = sum(CA_Offshore_wind_gen[!,2])
CA_capacities = [CA_on_wind_cap, CA_solar_cap, CA_off_wind_cap]

CEN_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], CEN_VRE_gen)
CEN_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], CEN_VRE_gen)
CEN_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], CEN_VRE_gen)
CEN_solar_cap = sum(CEN_Solar_gen[!,2])
CEN_on_wind_cap = sum(CEN_Onshore_wind_gen[!,2])
CEN_off_wind_cap = sum(CEN_Offshore_wind_gen[!,2])
CEN_capacities = [CEN_on_wind_cap, CEN_solar_cap, CEN_off_wind_cap]

MID_AT_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], MID_AT_VRE_gen)
MID_AT_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], MID_AT_VRE_gen)
MID_AT_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], MID_AT_VRE_gen)
MID_AT_solar_cap = sum(MID_AT_Solar_gen[!,2])
MID_AT_on_wind_cap = sum(MID_AT_Onshore_wind_gen[!,2])
MID_AT_off_wind_cap = sum(MID_AT_Offshore_wind_gen[!,2])
MID_AT_capacities = [MID_AT_on_wind_cap, MID_AT_solar_cap, MID_AT_off_wind_cap]


NE_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], NE_VRE_gen)
NE_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], NE_VRE_gen)
NE_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], NE_VRE_gen)
NE_solar_cap = sum(NE_Solar_gen[!,2])
NE_on_wind_cap = sum(NE_Onshore_wind_gen[!,2])
NE_off_wind_cap = sum(NE_Offshore_wind_gen[!,2])
NE_capacities = [NE_on_wind_cap, NE_solar_cap, NE_off_wind_cap]


NW_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], NW_VRE_gen)
NW_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], NW_VRE_gen)
NW_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], NW_VRE_gen)
NW_solar_cap = sum(NW_Solar_gen[!,2])
NW_on_wind_cap = sum(NW_Onshore_wind_gen[!,2])
NW_off_wind_cap = sum(NW_Offshore_wind_gen[!,2])
NW_capacities = [NW_on_wind_cap, NW_solar_cap, NW_off_wind_cap]

N_CEN_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], N_CEN_VRE_gen)
N_CEN_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], N_CEN_VRE_gen)
N_CEN_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], N_CEN_VRE_gen)
N_CEN_solar_cap = sum(N_CEN_Solar_gen[!,2])
N_CEN_on_wind_cap = sum(N_CEN_Onshore_wind_gen[!,2])
N_CEN_off_wind_cap = sum(N_CEN_Offshore_wind_gen[!,2])
N_CEN_capacities = [N_CEN_on_wind_cap, N_CEN_solar_cap, N_CEN_off_wind_cap]

SE_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], SE_VRE_gen)
SE_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], SE_VRE_gen)
SE_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], SE_VRE_gen)
SE_solar_cap = sum(SE_Solar_gen[!,2])
SE_on_wind_cap = sum(SE_Onshore_wind_gen[!,2])
SE_off_wind_cap = sum(SE_Offshore_wind_gen[!,2])
SE_capacities = [SE_on_wind_cap, SE_solar_cap, SE_off_wind_cap]

SW_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], SW_VRE_gen)
SW_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], SW_VRE_gen)
SW_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], SW_VRE_gen)
SW_solar_cap = sum(SW_Solar_gen[!,2])
SW_on_wind_cap = sum(SW_Onshore_wind_gen[!,2])
SW_off_wind_cap = sum(SW_Offshore_wind_gen[!,2])
SW_capacities = [SW_on_wind_cap, SW_solar_cap, SW_off_wind_cap]

TX_Solar_gen = filter(row -> row.Tech_Description ∈ ["Solar Photovoltaic",
"Solar Thermal with Energy Storage","Solar Thermal without Energy Storage"], TX_VRE_gen)
TX_Onshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Onshore Wind Turbine"], TX_VRE_gen)
TX_Offshore_wind_gen = filter(row -> row.Tech_Description ∈ ["Offshore Wind Turbine"], TX_VRE_gen)
TX_solar_cap = sum(TX_Solar_gen[!,2])
TX_on_wind_cap = sum(TX_Onshore_wind_gen[!,2])
TX_off_wind_cap = sum(TX_Offshore_wind_gen[!,2])
TX_capacities = [TX_on_wind_cap, TX_solar_cap, TX_off_wind_cap]


#----/--!!!!!******---------------------------******!!!!!-\----
#---/-Algorithm creating distribution of generation values-\---

# The "AvCap" function determines whether a specific plants will be online or offline in one Monte-Carlo trial
function AvCap(MW_data,EFORd_data)  # This function outputs column for online/offline plants
    RandomNum = rand(length(MW_data))
    a = zeros(length(MW_data))
    for i = 1:length(MW_data)
        if EFORd_data[i] < RandomNum[i] # If the EFORd is less than RandomNum, then MW value, else 0
            a[i] = MW_data[i]
        else
            a[i] = 0
        end
    end
    #return a
    single_gen_run = a
end


function Monte_Carlo(MW_data,EFORd_data)
    n = 10000 # number of runs for Monte Carlo calculation
    sumAvcap = zeros(1,n) 
    for i in 1:n
        Available_Cap = AvCap(MW_data, EFORd_data) # Array for available capacity
        sumAvcap[i] = sum(Available_Cap) #sums up online generators for each run
    end
    tranIter = transpose(sumAvcap)
    vecIter = vec(tranIter)
    global generation = vecIter
end

function plus_minus_array(amount)
    n = length(place_holder_demand) # demand arrays are all the same length
    added_subtracted_demand = zeros(1,n)
    for i in 1:length(place_holder_demand)
        added_subtracted_demand[i] = amount
    end
    add_subtract =  transpose(added_subtracted_demand)
end


function regional_demand(reg_demand)
    global demand = reg_demand
end

# The "Comparison" function handles the calculation of LOLE and LOLP
function Comparison(demand,generation)  # This function outputs counts demand-generation comparison
    b = zeros(length(demand))
    bsum = zeros(length(generation))
    difference = zeros(length(demand))
    for i = 1:length(generation)
        for j = 1:length(demand)
            difference[j] = demand[j] - generation[i] # used to determine instances where demand exceeds generation
            #println(generation[i])
            if difference[j] > 0.0  # this indicates if generation is less than demand
                b[j] = 1.0   # a loss of load event occurs
            else
                b[j] = 0.0   # else a loss of load event does not occur
            end
        end
        bsum[i] = sum(b)

    end
    #println(bsum)

    #CompCount = Comparison(demand,generation)
    LOLE_values = bsum/length(demand)
    #println(LOLE_values)
    LOLP = mean(LOLE_values); # LOLP is the mean average of LOLE values over a set time period
    println("LOLP = ", LOLP)
    #Current_LOLP = LOLP
    return LOLP
    
end

function below_desired(demand,generation,desired_LOLP,plus_minus,amount) # If LOLP is below desired
    let demand = demand, count = 0
        while Comparison(demand,generation) < desired_LOLP
            #--------------- LOLP Calculation ------------
            demand = demand .+ plus_minus #demand added
            count += amount # # This updates count based on the amount step
            println("Count is = ", count)
        end
        global desired_result = (demand,count)
    end
end

function above_desired(demand,generation,desired_LOLP,plus_minus,amount) # If LOLP is above desired
    let demand = demand, count = 0
        while Comparison(demand,generation) > desired_LOLP
            #--------------- LOLP Calculation ------------
            demand = demand .- plus_minus #demand subtracted
            count += amount # # This updates count based on the amount step
            println("Count is = ", count)
        end
        global desired_result = (demand, count);
    end
end

function counter(demand,generation,amount,desired_LOLP)
    
    plus_minus = plus_minus_array(amount)
    if Comparison(demand,generation) < desired_LOLP
        below_desired(demand,generation,desired_LOLP,plus_minus,amount)
    else
        above_desired(demand,generation,desired_LOLP,plus_minus,amount) 
    end
end

#--

function existing_vre_specs(reg_solar_cap, reg_on_wind_cap,reg_off_wind_cap, reg_solar_CF, reg_on_wind_CF, reg_off_wind_CF)
        
    global existing_solar_cap = reg_solar_cap #Value in MW
    global existing_on_wind_cap = reg_on_wind_cap #Value in MW
    global existing_off_wind_cap = reg_off_wind_cap #Value in MW

    existing_solar_capfact = reg_solar_CF #hourly solar capacity factors
    existing_on_wind_capfact = reg_on_wind_CF #hourly wind capacity factors
    existing_off_wind_capfact = reg_off_wind_CF

    global solar_HG = existing_solar_cap * existing_solar_capfact #hourly generation
    global on_wind_HG = existing_on_wind_cap * existing_on_wind_capfact
    global off_wind_HG = existing_off_wind_cap * existing_off_wind_capfact
end

function new_vre_specs(incr_size, WND_series, PV_series, OFWND_series)
    #VRE introduced to clusters within the region
    # capacity factor * increment value for solar (MW)  = source generation
    on_wind_incr = incr_size[1]
    solar_incr = incr_size[2]
    off_wind_incr = incr_size[3]

    global WND_gen = Matrix(WND_series) * on_wind_incr  
    global PV_gen = Matrix(PV_series) * solar_incr
    global OFWND_gen = Matrix(OFWND_series) * off_wind_incr

end

function net_above_zero(demand,resource)  # 
    a = zeros(length(demand))
    for i = 1:length(demand)
        if demand[i] ≥ resource[i] # Subtraction of applied VRE from demand while keeping values at or above zero
            a[i] = demand[i] - resource[i]
            #println(a[i])
        else
            a[i] = 0
            #println(a[i])
        end
    end
    return a 
end

function name_array(name,output)
    n = length(output) # length of output array
    region_name_array = []
    for i = 1:n
        region_name_array = push!(region_name_array,name)
    end
    return region_name_array
end

#Arrays that are empty initially that are then filled up with results for consolidation/output in a dataframe
RN = []
OT = []
OV = []

function days() # This organizes the hours into days
    global H1 = []
    global H2 = []
    global H3 = []
    global H4 = []
    global H5 = []
    global H6 = []
    global H7 = []
    global H8 = []
    global H9 = []
    global H10 = []
    global H11 = []
    global H12 = []
    global H13 = []
    global H14 = []
    global H15 = []
    global H16 = []
    global H17 = []
    global H18 = []
    global H19 = []
    global H20 = []
    global H21 = []
    global H22 = []
    global H23 = []
    global H24 = []
    
    
    a = 1
    b = 24
    n = 365
    
    for i in 1:n
        Day = [a:b;]
        append!(H1, Day[1])
        append!(H2, Day[2])
        append!(H3, Day[3])
        append!(H4, Day[4])
        append!(H5, Day[5])
        append!(H6, Day[6])
        append!(H7, Day[7])
        append!(H8, Day[8])
        append!(H9, Day[9])
        append!(H10, Day[10])
        append!(H11, Day[11])
        append!(H12, Day[12])
        append!(H13, Day[13])
        append!(H14, Day[14])
        append!(H15, Day[15])
        append!(H16, Day[16])
        append!(H17, Day[17])
        append!(H18, Day[18])
        append!(H19, Day[19])
        append!(H20, Day[20])
        append!(H21, Day[21])
        append!(H22, Day[22])
        append!(H23, Day[23])
        append!(H24, Day[24])

        a = a + 24
        b = b + 24
        
        #t_day = transpose(Day)
        #println(t_day)
        #append!(H,Day)
    end
end 

function maxk(a,k) # This selects top hours
    b = partialsortperm(a,1:k,rev=true)
    return collect(zip(b, a[b]))
end 

Values = DataFrame() #Dataframe that populates for new demand
lbl_name = []


function single_iter(vre_gen, single_cluster_name, region_name, increment)
    #---------------1-------------------
    println("\nCalculation for ", single_cluster_name," , Iter $i")
            
    demand = net_above_zero(demand, vre_gen) # Subtraction of applied VRE from demand while keeping values at or above zero

    
    #/-{}-\#
    A = vec(demand)
    locate = findmax(A)
    mw_value = locate[1]
    norm_dem = A/mw_value
    dem = norm_dem[m]
    colname = "VRE Cluster $k, Iter $i"
    Values[!,colname] = dem
    push!(lbl_name,colname)
    #/-{}-\#


    counter(demand,generation,amount,desired_LOLP)
    final_count = desired_result[2]
    println(final_count, " MW of demand need to be added to satisfy desired LOLP.")
    println("\nThe ",single_cluster_name, " ELCC is ", final_count, " MW.")
    capcredit = final_count/increment
    println("The ", single_cluster_name ," capacity credit is ", capcredit,"\n")

    new_demand = desired_result[1]
    VRE_clus_ELCC = final_count
    VRE_clus_CapCred = capcredit 
    append!(cc_values, capcredit)

    global demand = new_demand
    
    #---%---%--%------------
    colname = "For Cluster $k: Iter $i"
    global full_region_net_dem_df[!,colname] = vec(new_demand)
    #---%---%--%------------

    println("---Mean Demand is now ",mean(demand), "\n")
    #beep() #audio alert for New_PV_1


    Output_titles = [
    "Iter $i: New VRE Cluster $k ELCC (MW)",
    "Iter $i: New VRE Cluster $k CapCred"]

    Output_values = [
    VRE_clus_ELCC,
    VRE_clus_CapCred]

    RN_array = name_array(region_name,Output_titles)

    run_output = DataFrame(Type_of_LOLP = (Output_titles), Value = (Output_values))
    print("\n",run_output,"\n") 

    #CSV.write("Capacity_credit_output_$region_name.csv",run_output)

    global RN = append!(RN,RN_array)
    global OT = append!(OT,Output_titles)
    global OV = append!(OV,Output_values)
    global results_df = DataFrame(Region_Name = (RN), Output_Title = (OT), Output_value = (OV))

    #------
end

function cluster_op(vre_gen, clus_name_array, region_name, increment) # For cluster operations 
    
    n = num_of_incr # Number of times to add a set value of resource to the grid
    global IterCount = n
    global i = 1
    global demand = current_time_demand # Demand to start every cluster iter process with
    global cc_values = []
    for j in 1:n
        single_iter(vre_gen, clus_name_array[k], region_name, increment)
        global i +=1 # Prepares for next iteration of cluster
    end
    C_Creds[!,clus_name_array[k]] = cc_values
    #push!(cc_values,clus_name)
end

function resource_addition_rec(a,n_s_rec,incr) # for capacity level increment
    global n_s_rec +=incr
    append!(a,n_s_rec)
end
function resource_addition(a,n_s,incr) # for capacity level increment
    global n_s +=incr
    append!(a,n_s)
end


function gen_raw(reg_exist_cap,reg_exist_CF, grad_cap, series,reg_count,reg_demand, clus_name_subset)
    
    exist_gen_raw = reg_exist_cap * reg_exist_CF # for single existing VRE resource column
    load_total = sum(reg_demand)
    for s in 1:reg_count
        new_CF = series[!,s]
        for i = 1:length(grad_cap) # for the numerous new solar columns
            p = exist_gen_raw + grad_cap[i] * new_CF
            colname = "Incr $i"
            cap_for_pen[!,colname] = p
        end

        global gen_pen = []
        gen_adj = zeros(8760) # initialize gen_adj array
        df_ncol = ncol(cap_for_pen) # column count for operation below
    
        for k in 1:df_ncol
            gen_resource = cap_for_pen[!,k]
    
            for h in 1:8760
                if gen_resource[h] > reg_demand[h]
                    gen_adj[h] = reg_demand[h]
                else
                    gen_adj[h] = gen_resource[h]
                end
            end
    
            pen = sum(gen_adj)/load_total
            append!(gen_pen,pen)
        end
        pen_levels[!,clus_name_subset[s]] = gen_pen
    end
end

# Version of "gen_raw" function to apply to the medians and means
function gen_raw_med_mn(exist_gen_raw,grad_cap,wind_series,solar_series,wind_reg_count,solar_reg_count,decimal_portion,reg_demand,clus_name_subset)
    
    load_total = sum(reg_demand)
    
    new_CF_wind = wind_series[!,(wind_reg_count+1)]
    new_CF_solar = solar_series[!,(solar_reg_count+1)]
    new_wind_portion = decimal_portion[1]
    new_solar_portion = decimal_portion[2]
    for i = 1:length(grad_cap) 
        p = exist_gen_raw + grad_cap[i] * (new_CF_wind*new_wind_portion + new_CF_solar*new_solar_portion)
        colname = "Incr $i"
        cap_for_pen[!,colname] = p
    end

    global gen_pen = []
    gen_adj = zeros(8760) # initialize gen_adj array
    df_ncol = ncol(cap_for_pen) # column count for operation below

    for k in 1:df_ncol
        gen_resource = cap_for_pen[!,k]

        for h in 1:8760
            if gen_resource[h] > reg_demand[h]
                gen_adj[h] = reg_demand[h]
            else
                gen_adj[h] = gen_resource[h]
            end
        end

        pen = sum(gen_adj)/load_total
        append!(gen_pen,pen)
    end
    colname = clus_name_subset
    pen_levels[!,colname] = gen_pen
    

end

# The full capacity credit function that uses several functions defined in this module
function full_CC_operation(RN,OT,OV,clus_name_array,region_name,gen_specs, reg_demand, reg_capacities, reg_on_wind_CF, reg_solar_CF, reg_off_wind_CF, incr_size, WND_series, PV_series, OFWND_series,reg_counts,x_cap_frame)
    
    reg_on_wind_cap = reg_capacities[1]
    reg_solar_cap = reg_capacities[2]
    reg_off_wind_cap = reg_capacities[3]

    function base_case()
        Monte_Carlo(gen_specs[!,4],gen_specs[!,7])
        demand = regional_demand(reg_demand)
        println("---Mean Demand is ",mean(demand), "\n")
        
        
        #---------Max day selection-------
        days()

        Hr_Day_df = DataFrame( H1 = (H1), H2 = (H2), H3 = (H3), H4 = (H4), H5 = (H5),
        H6 = (H6), H7 = (H7), H8 = (H8), H9 = (H9), H10 = (H10), H11 = (H11), H12 = (H12),
        H13 = (H13), H14 = (H14), H15 = (H15), H16 = (H16), H17 = (H17), H18 = (H18), H19 = (H19),
        H20 = (H20), H21 = (H21), H22 = (H22), H23 = (H23), H24 = (H24))
        #print("\n",Hr_Day_df,"\n") 
        hr_day = convert(Matrix, Hr_Day_df[:,1:24])
        Dim = size(hr_day)
        D = Dim[1]

        A = vec(demand)
        j = maxk(A,1)
        global p = 1
        tuple = j[p]
        mw_value = tuple[2]
        array_location = tuple[1]
        day_of_occurence = (array_location ÷ 24) + 1 # uses integer divide to give day
        println("Demand is ",mw_value, " (MW) at ", array_location," hours, on day ", day_of_occurence, " of the year.")
        lower = day_of_occurence * 24 +1
        upper = day_of_occurence * 24 + 24
        println("Lower bound is ",lower, " hours and upper bound is ", upper," hours.")
        global anno = "Hour",array_location," Day",day_of_occurence
        global m = lower:upper
        x = [1:24;]
        norm_dem = A/mw_value # normalized demand representation
        dem = norm_dem[m]
        #----------
        
        #/-{}-\#
       
        norm_dem = A/mw_value
        dem = norm_dem[m]
        colname = "Base"
        Values[!,colname] = dem
        push!(lbl_name,colname)
        #/-{}-\#
        

        counter(demand,generation,amount,desired_LOLP)
        final_count = desired_result[2]
        if Comparison(demand,generation) ≥ desired_LOLP
            Ls = -final_count
            println(final_count, " MW of demand need to be subtracted to satisfy desired LOLP.")
        elseif Comparison(demand,generation) ≤ desired_LOLP
            Ls = final_count
            println(final_count, " MW of demand need to be added to satisfy desired LOLP.")
        end
        new_demand = desired_result[1]
        #= The above if statement accounts for systems that are overbuilt
            and need demand to be added, and systems that are underbuilt that 
            need demand to be subtracted. 
        =#
        Ls_demand = new_demand


        #----/-!!!!!******------------******!!!!!-\------
        #---/------Accounting for existing VRE----\-----
            
        existing_vre_specs(reg_solar_cap,reg_on_wind_cap,reg_off_wind_cap, reg_solar_CF, reg_on_wind_CF, reg_off_wind_CF) 

        # Accounting for pre-existing solar capacity
        demand = new_demand
        
        #/-{}-\#
        A = vec(demand)
        locate = findmax(A)
        mw_value = locate[1]
        norm_dem = A/mw_value
        dem = norm_dem[m]
        colname = "Ls"
        Values[!,colname] = dem
        push!(lbl_name,colname)
        #/-{}-\#

        demand = demand - solar_HG
        
        println("\nNew LOLP calculation accounting for pre-existing solar")
        counter(demand,generation,amount,desired_LOLP)
        final_count = desired_result[2]
        println(final_count, " MW of demand need to be added to satisfy desired LOLP.")
        println("\nThe existing solar ELCC is ", final_count, " MW.")
        exist_solar_capcredit = final_count/existing_solar_cap
        println("The existing solar capacity credit is ", exist_solar_capcredit,"\n")
        
        new_demand = desired_result[1]
        E_Solar_ELCC = final_count
        E_Solar_demand = new_demand
        global E_Solar_CapCred = exist_solar_capcredit


        # Accounting for pre-existing onshore wind capacity
        demand = new_demand
        
        #/-{}-\#
        A = vec(demand)
        locate = findmax(A)
        mw_value = locate[1]
        norm_dem = A/mw_value
        dem = norm_dem[m]
        colname = "Existing_Solar"
        Values[!,colname] = dem
        push!(lbl_name,colname)
        #/-{}-\#

        demand = demand - on_wind_HG
        
        println("\nNew LOLP calculation accounting for pre-existing onshore wind")
        counter(demand,generation,amount,desired_LOLP)
        final_count = desired_result[2]
        println(final_count, " MW of demand need to be added to satisfy desired LOLP.")
        println("\nThe existing onshore wind ELCC is ", final_count, " MW.")
        exist_on_wind_capcredit = final_count/existing_on_wind_cap
        println("The existing onshore wind capacity credit is ", exist_on_wind_capcredit,"\n")
        
        new_demand = desired_result[1]
        E_On_Wind_ELCC = final_count
        E_On_Wind_demand = new_demand
        global E_On_Wind_CapCred = exist_on_wind_capcredit

        global current_time_demand = new_demand
        global demand = current_time_demand

        #/-{}-\#
        A = vec(demand)
        locate = findmax(A)
        mw_value = locate[1]
        norm_dem = A/mw_value
        dem = norm_dem[m]
        colname = "Existing_Wind"
        Values[!,colname] = dem
        push!(lbl_name,colname)
        #/-{}-\#

        println("---Mean Demand is now ",mean(demand), "\n")


        Output_titles = ["Base Ls value (MW)",
        "E_Solar_ELCC (MW)",
        "E_Solar_CapCred",
        "E_On_Wind_ELCC (MW)",
        "E_On_Wind_CapCred"]
        
        Output_values = [Ls,
        E_Solar_ELCC,
        E_Solar_CapCred,
        E_On_Wind_ELCC,
        E_On_Wind_CapCred]

        RN_array = name_array(region_name,Output_titles)

        run_output = DataFrame(Type_of_LOLP = (Output_titles), Value = (Output_values))
        print("\n",run_output,"\n") 
        
        #CSV.write("Capacity_credit_output_$region_name.csv",run_output)

        global RN = append!(RN,RN_array)
        global OT = append!(OT,Output_titles)
        global OV = append!(OV,Output_values)
        global results_df = DataFrame(Region_Name = (RN), Output_Title = (OT), Output_value = (OV))

        println("\nNew LOLP calculations after implementing new VRE")
    end
    base_case()
    

    #----/-!!!!!******------------******!!!!!-\------
    #---/------Accounting for New VRE----\-----
    
   
    new_vre_specs(incr_size, WND_series, PV_series, OFWND_series)

    global k = 1
    for t in 1:reg_counts[1] #NE_WND_count
        cluster_op(WND_gen[:,t], clus_name_array, region_name, incr_size[1])
        global k += 1
    end

    for t in 1:reg_counts[2] #NE_PV_count
        cluster_op(PV_gen[:,t], clus_name_array, region_name, incr_size[2])
        global k += 1
    end

    for t in 1:reg_counts[3] #NE_OFWND_count
        cluster_op(OFWND_gen[:,t], clus_name_array, region_name, incr_size[3])
        global k += 1
    end

    # Onshore Wind and Solar Blends 
    # In the name bl_value_value, it's wind percentage then solar percentage
    # First column after the reg_counts is the CF_median
    # Second column after the reg_counts is the CF_mean
    # The increment portion includes half and half of each MW implementation level, totals to 1000 MW
    
    # ---- For medians --->
    med_bl_0_100 = PV_gen[:,(reg_counts[2]+ 1)]
    med_bl_20_80 = 0.2 * WND_gen[:,(reg_counts[1]+ 1)] + 0.8 * PV_gen[:,(reg_counts[2]+ 1)]
    med_bl_40_60 = 0.4 * WND_gen[:,(reg_counts[1]+ 1)] + 0.6 * PV_gen[:,(reg_counts[2]+ 1)]
    med_bl_50_50 = 0.5 * WND_gen[:,(reg_counts[1]+ 1)] + 0.5 * PV_gen[:,(reg_counts[2]+ 1)]
    med_bl_60_40 = 0.6 * WND_gen[:,(reg_counts[1]+ 1)] + 0.4 * PV_gen[:,(reg_counts[2]+ 1)]
    med_bl_80_20 = 0.8 * WND_gen[:,(reg_counts[1]+ 1)] + 0.2 * PV_gen[:,(reg_counts[2]+ 1)]
    med_bl_100_0 = WND_gen[:,(reg_counts[1]+ 1)]

    cluster_op(med_bl_0_100, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(med_bl_20_80, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(med_bl_40_60, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(med_bl_50_50, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(med_bl_60_40, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(med_bl_80_20, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(med_bl_100_0, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1


    # ---- For means --->
    mn_bl_0_100 = PV_gen[:,(reg_counts[2]+ 2)]
    mn_bl_20_80 = 0.2 * WND_gen[:,(reg_counts[1]+ 2)] + 0.8 * PV_gen[:,(reg_counts[2]+ 2)]
    mn_bl_40_60 = 0.4 * WND_gen[:,(reg_counts[1]+ 2)] + 0.6 * PV_gen[:,(reg_counts[2]+ 2)]
    mn_bl_50_50 = 0.5 * WND_gen[:,(reg_counts[1]+ 2)] + 0.5 * PV_gen[:,(reg_counts[2]+ 2)]
    mn_bl_60_40 = 0.6 * WND_gen[:,(reg_counts[1]+ 2)] + 0.4 * PV_gen[:,(reg_counts[2]+ 2)]
    mn_bl_80_20 = 0.8 * WND_gen[:,(reg_counts[1]+ 2)] + 0.2 * PV_gen[:,(reg_counts[2]+ 2)]
    mn_bl_100_0 = WND_gen[:,(reg_counts[1]+ 2)]

    cluster_op(mn_bl_0_100, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(mn_bl_20_80, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(mn_bl_40_60, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(mn_bl_50_50, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(mn_bl_60_40, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(mn_bl_80_20, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1
    cluster_op(mn_bl_100_0, clus_name_array, region_name, (0.5*incr_size[1] + 0.5*incr_size[2]))
    global k += 1


    #-----------------------------------------------
    #- Functions for the recording of incrementing capacity level
    #-----------------------------------------------
   
    global wind_grad_cap_rec = [] # for wind capacity recording purposes
    global n_s_rec = reg_on_wind_cap # starting point for incremental loop
    append!(wind_grad_cap_rec,n_s_rec)
    for j in 1:IterCount
        resource_addition_rec(wind_grad_cap_rec,n_s_rec,incr_size[1])
    end
    global solar_grad_cap_rec = [] # for solar capacity recording purposes
    global n_s_rec = reg_solar_cap # starting point for incremental loop
    append!(solar_grad_cap_rec,n_s_rec)
    for j in 1:IterCount
        resource_addition_rec(solar_grad_cap_rec,n_s_rec, incr_size[2])
    end
    global off_wind_grad_cap_rec = [] # for off wind capacity recording purposes
    global n_s_rec = reg_off_wind_cap # starting point for incremental loop
    append!(off_wind_grad_cap_rec,n_s_rec)
    for j in 1:IterCount
        resource_addition_rec(off_wind_grad_cap_rec,n_s_rec, incr_size[3])
    end

    global wind_solar_grad_cap_rec = [] # ->>> recording purposes for onshore wind and solar blend
    global n_s_rec = reg_on_wind_cap + reg_solar_cap
    append!(wind_solar_grad_cap_rec,n_s_rec)
    for j in 1:IterCount
        resource_addition_rec(wind_solar_grad_cap_rec,n_s_rec,(0.5*incr_size[1] + 0.5*incr_size[2]))
    end

    #-----------------------------------------------
    #- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #-----------------------------------------------

    #--------------------------------------------------------------
    #-- Capacity Level impact functions to determine penetration level 
    #----------------------------------------------------------------

    global wind_grad_cap = []
    global n_s = 0  # starting point for incremental loop
    append!(wind_grad_cap,n_s)
    for j in 1:IterCount
        resource_addition(wind_grad_cap,n_s,incr_size[1]) 
    end
    global wind_grad_cap = wind_grad_cap[2:length(wind_grad_cap)]


    global solar_grad_cap = []
    global n_s = 0  # starting point for incremental loop
    append!(solar_grad_cap,n_s)
    for j in 1:IterCount
        resource_addition(solar_grad_cap,n_s,incr_size[2])
    end
    global solar_grad_cap = solar_grad_cap[2:length(solar_grad_cap)]
    
    global off_wind_grad_cap = []
    global n_s = 0  # starting point for incremental loop
    append!(off_wind_grad_cap,n_s)
    for j in 1:IterCount
        resource_addition(off_wind_grad_cap,n_s,incr_size[3])
    end
    global off_wind_grad_cap = off_wind_grad_cap[2:length(off_wind_grad_cap)]

    global wind_solar_grad_cap = []  # ->>> recording purposes for onshore wind and solar blend
    global n_s = 0  # starting point for incremental loop
    append!(wind_solar_grad_cap,n_s)
    for j in 1:IterCount
        resource_addition(wind_solar_grad_cap,n_s, (0.5*incr_size[1] + 0.5*incr_size[2]))
    end
    global wind_solar_grad_cap = wind_solar_grad_cap[2:length(wind_solar_grad_cap)]

    # - ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^----
    #-------------------------------------
    
    gen_raw(reg_on_wind_cap,reg_on_wind_CF, wind_grad_cap, WND_series, reg_counts[1], reg_demand, clus_name_array[1:(reg_counts[1])] )
    gen_raw(reg_solar_cap,reg_solar_CF, solar_grad_cap, PV_series, reg_counts[2], reg_demand, clus_name_array[(reg_counts[1] + 1):(reg_counts[1] + reg_counts[2])] )
    gen_raw(reg_off_wind_cap,reg_off_wind_CF, off_wind_grad_cap,OFWND_series, reg_counts[3], reg_demand, clus_name_array[(reg_counts[1] + reg_counts[2] + 1):(reg_counts[1] + reg_counts[2] + reg_counts[3])] )
   
    
    
    # Using penetration formulation function for the mean and median scenarios
    median_mean_range = [(reg_counts[1] + reg_counts[2] + reg_counts[3] + 1) : (reg_counts[1] + reg_counts[2] + reg_counts[3] + 14) ;]

    gen_raw_med_mn(med_bl_100_0,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[1,0], reg_demand, clus_name_array[median_mean_range[1]]) 
    gen_raw_med_mn(med_bl_80_20,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.8,0.2], reg_demand, clus_name_array[median_mean_range[2]]) 
    gen_raw_med_mn(med_bl_60_40,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.6,0.4], reg_demand, clus_name_array[median_mean_range[3]]) 
    gen_raw_med_mn(med_bl_50_50,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.5,0.5], reg_demand, clus_name_array[median_mean_range[4]]) 
    gen_raw_med_mn(med_bl_40_60,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.4,0.6], reg_demand, clus_name_array[median_mean_range[5]]) 
    gen_raw_med_mn(med_bl_20_80,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.2,0.8], reg_demand, clus_name_array[median_mean_range[6]]) 
    gen_raw_med_mn(med_bl_0_100,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0,1], reg_demand, clus_name_array[median_mean_range[7]]) 

    gen_raw_med_mn(mn_bl_100_0,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[1,0], reg_demand, clus_name_array[median_mean_range[8]]) 
    gen_raw_med_mn(mn_bl_80_20,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.8,0.2], reg_demand, clus_name_array[median_mean_range[9]]) 
    gen_raw_med_mn(mn_bl_60_40,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.6,0.4], reg_demand, clus_name_array[median_mean_range[10]]) 
    gen_raw_med_mn(mn_bl_50_50,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.5,0.5], reg_demand, clus_name_array[median_mean_range[11]]) 
    gen_raw_med_mn(mn_bl_40_60,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.4,0.6], reg_demand, clus_name_array[median_mean_range[12]]) 
    gen_raw_med_mn(mn_bl_20_80,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0.2,0.8], reg_demand, clus_name_array[median_mean_range[13]]) 
    gen_raw_med_mn(mn_bl_0_100,wind_solar_grad_cap,WND_series,PV_series,reg_counts[1],reg_counts[2],[0,1], reg_demand, clus_name_array[median_mean_range[14]]) 
    

    #-----------------------------------------------
    # Produces output for MW capacity levels
    for i in 1:reg_counts[1]
        x_cap_frame[!,clus_name_array[i]] = wind_grad_cap_rec
    end
    for i in (reg_counts[1] + 1):(reg_counts[1] + reg_counts[2])
        x_cap_frame[!,clus_name_array[i]] = solar_grad_cap_rec
    end
    for i in (reg_counts[1] + reg_counts[2] + 1): (reg_counts[1] + reg_counts[2] + reg_counts[3])
        x_cap_frame[!,clus_name_array[i]] = off_wind_grad_cap_rec
    end
    for i in (reg_counts[1] + reg_counts[2] + reg_counts[3] + 1) : (reg_counts[1] + reg_counts[2] + reg_counts[3] + 14)
        x_cap_frame[!,clus_name_array[i]] = wind_solar_grad_cap_rec
    end

    CSV.write("PLT_28_E1 $region_name Capacity_levels_df.csv", x_cap_frame)
    
end

function df_reset() # to initialize dataframes for new region calculations
    global C_Creds = DataFrame() # capacity credit dataframe
    global cap_for_pen = DataFrame() # capacities used for penetration level calculation
    global pen_levels = DataFrame() # calculated penetration level dataframe
    global full_region_net_dem_df = DataFrame() # summary data output for region calculations
end

# Dataframes for incremental capacity level output files
CA_x_cap_frame = DataFrame()
CEN_x_cap_frame = DataFrame()
MID_AT_x_cap_frame = DataFrame()
NE_x_cap_frame = DataFrame()
NW_x_cap_frame = DataFrame()
N_CEN_x_cap_frame = DataFrame()
SE_x_cap_frame = DataFrame()
SW_x_cap_frame = DataFrame()
TX_x_cap_frame = DataFrame()


Random.seed!(1) # set random seed for data reproducibility
global res_incr_size = [1000,1000,1000] # resource increment in MW size for on_wind_incr size, solar_incr size, off_wind_incr size
global amount = 500 # resolution size for calculations
global desired_LOLP = 0.0002739726027 # equates to 24 hours of outage every 10 years

# Number of increments for each region in order of CA, NW, SW, TX, N_CEN, CEN, SE, MID_AT, NE
num_incr_param = [2,  2,  2,  2,  2,     2,   2,  2,      2]
#----------------[CA, NW, SW, TX, N_CEN, CEN, SE, MID_AT, NE]

global num_of_incr = num_incr_param[1] # number of times to add resource to grid
df_reset()
CA_time = @elapsed full_CC_operation(RN,OT,OV,CA_clus_names,CA_name, CA_gen_specs, CA_demand, CA_capacities, E_WND_CA, E_PV_CA, E_OFWND_all, res_incr_size, a_series, b_series, c_series, CA_reg_counts, CA_x_cap_frame)
CA_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_CA_Penetration_levels_df.csv", CA_x_pen_frame)
CA_y_frame = C_Creds
CSV.write("PLT_28_E1_CA_Cap_credits_df.csv", CA_y_frame)

global num_of_incr = num_incr_param[2] # number of times to add resource to grid
df_reset()
NW_time = @elapsed full_CC_operation(RN,OT,OV,NW_clus_names,NW_name, NW_gen_specs, NW_demand, NW_capacities, E_WND_NW, E_PV_NW, E_OFWND_all, res_incr_size, d_series, e_series, f_series, NW_reg_counts, NW_x_cap_frame)
NW_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_NW_Penetration_levels_df.csv", NW_x_pen_frame)
NW_y_frame = C_Creds
CSV.write("PLT_28_E1_NW_Cap_credits_df.csv", NW_y_frame)

global num_of_incr = num_incr_param[3] # number of times to add resource to grid
df_reset()
SW_time = @elapsed full_CC_operation(RN,OT,OV,SW_clus_names,SW_name, SW_gen_specs, SW_demand, SW_capacities, E_WND_SW, E_PV_SW, E_OFWND_all, res_incr_size, g_series, h_series, nnow_series, SW_reg_counts, SW_x_cap_frame)
SW_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_SW_Penetration_levels_df.csv", SW_x_pen_frame)
SW_y_frame = C_Creds
CSV.write("PLT_28_E1_SW_Cap_credits_df.csv", SW_y_frame)

global num_of_incr = num_incr_param[4] # number of times to add resource to grid
df_reset()
TX_time = @elapsed full_CC_operation(RN,OT,OV,TX_clus_names,TX_name, TX_gen_specs, TX_demand, TX_capacities, E_WND_TX, E_PV_TX, E_OFWND_all, res_incr_size, i_series, j_series, nnow_series, TX_reg_counts, TX_x_cap_frame)
TX_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_TX_Penetration_levels_df.csv", TX_x_pen_frame)
TX_y_frame = C_Creds
CSV.write("PLT_28_E1_TX_Cap_credits_df.csv", TX_y_frame)

global num_of_incr = num_incr_param[5] # number of times to add resource to grid
df_reset()
N_CEN_time = @elapsed full_CC_operation(RN,OT,OV,N_CEN_clus_names,N_CEN_name, N_CEN_gen_specs, N_CEN_demand, N_CEN_capacities, E_WND_N_CEN, E_PV_N_CEN, E_OFWND_all, res_incr_size, k_series, l_series, nnow_series, N_CEN_reg_counts, N_CEN_x_cap_frame)
N_CEN_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_N_CEN_Penetration_levels_df.csv", N_CEN_x_pen_frame)
N_CEN_y_frame = C_Creds
CSV.write("PLT_28_E1_N_CEN_Cap_credits_df.csv", N_CEN_y_frame)

global num_of_incr = num_incr_param[6] # number of times to add resource to grid
df_reset()
CEN_time = @elapsed full_CC_operation(RN,OT,OV,CEN_clus_names,CEN_name, CEN_gen_specs, CEN_demand, CEN_capacities, E_WND_CEN, E_PV_CEN, E_OFWND_all, res_incr_size, m_series, n_series, nnow_series, CEN_reg_counts, CEN_x_cap_frame)
CEN_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_CEN_Penetration_levels_df.csv", CEN_x_pen_frame)
CEN_y_frame = C_Creds
CSV.write("PLT_28_E1_CEN_Cap_credits_df.csv", CEN_y_frame)

global num_of_incr = num_incr_param[7] # number of times to add resource to grid
df_reset()
SE_time = @elapsed full_CC_operation(RN,OT,OV,SE_clus_names,SE_name, SE_gen_specs, SE_demand, SE_capacities, E_WND_SE, E_PV_SE, E_OFWND_all, res_incr_size, o_series, p_series, nnow_series, SE_reg_counts, SE_x_cap_frame)
SE_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_SE_Penetration_levels_df.csv", SE_x_pen_frame)
SE_y_frame = C_Creds
CSV.write("PLT_28_E1_SE_Cap_credits_df.csv", SE_y_frame)

global num_of_incr = num_incr_param[8] # number of times to add resource to grid
df_reset()
MID_AT_time = @elapsed full_CC_operation(RN,OT,OV,MID_AT_clus_names,MID_AT_name, MID_AT_gen_specs, MID_AT_demand, MID_AT_capacities, E_WND_MID_AT, E_PV_MID_AT, E_OFWND_all, res_incr_size, q_series, r_series, nnow_series, MID_AT_reg_counts, MID_AT_x_cap_frame)
MID_AT_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_MID_AT_Penetration_levels_df.csv", MID_AT_x_pen_frame)
MID_AT_y_frame = C_Creds
CSV.write("PLT_28_E1_MID_AT_Cap_credits_df.csv", MID_AT_y_frame)

global num_of_incr = num_incr_param[9] # number of times to add resource to grid
df_reset()
NE_time = @elapsed full_CC_operation(RN,OT,OV,NE_clus_names,NE_name, NE_gen_specs, NE_demand, NE_capacities, E_WND_NE, E_PV_NE, E_OFWND_all, res_incr_size, s_series, t_series, u_series, NE_reg_counts, NE_x_cap_frame)
NE_x_pen_frame = pen_levels
CSV.write("PLT_28_E1_NE_Penetration_levels_df.csv", NE_x_pen_frame)
NE_y_frame = C_Creds
CSV.write("PLT_28_E1_NE_Cap_credits_df.csv", NE_y_frame)


Total_time = NE_time + CA_time + NW_time + CEN_time + MID_AT_time + N_CEN_time + SE_time + SW_time + TX_time

region_run_title = ["NE Region Run Time","CA Region Run Time","NW Region Run Time","CEN Region Run Time","MID_AT Region Run Time",
"N_CEN Region Run Time","SE Region Run Time","SW Region Run Time","TX Region Run Time", "Total Run Time for All Regions"]
region_run_time = [NE_time/60, CA_time/60, NW_time/60, CEN_time/60, MID_AT_time/60, N_CEN_time/60, SE_time/60, SW_time/60, TX_time/60, Total_time/60]
runtime_results_df = DataFrame(Region_Run_Title = (region_run_title), Region_Run_Time_minutes = (region_run_time))
println(runtime_results_df) #Will print out database of runtimes for each region run
CSV.write("PLT_28_E1_All_regions_runtime.csv", runtime_results_df)

println(results_df) #Will print out database of results for regions
CSV.write("PLT_28_E1_All_regions.csv", results_df)


end # end of CR module