# Pearson coefficient for top hours
# Note: Top 20 net demand hours may change with each renewable increment accounted for

module pear

using CSV
using DataFrames
using Statistics
using DelimitedFiles

#For the sake development, we assume the following file to be demand (8760 hours)
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


#------------------------------------
csvimport3 = CSV.read("OEO_renewables_clusters.csv", DataFrame)
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
#-------------------------------------------------------

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

    elseif contains(CF_headers[i],"_SOLPVCEN_N")
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

    elseif contains(CF_headers[i],"_OFWND_N")
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


#-------------
CA_WND_lbl = "CA_WND"; CA_PV_lbl = "CA_PV"; CA_OFWND_lbl = "CA_OFWND";
NE_WND_lbl = "NE_WND"; NE_PV_lbl = "NE_PV"; NE_OFWND_lbl = "NE_OFWND";
NW_WND_lbl = "NW_WND"; NW_PV_lbl = "NW_PV"; NW_OFWND_lbl = "NW_OFWND";

CEN_WND_lbl = "CEN_WND"; CEN_PV_lbl = "CEN_PV";
MID_AT_WND_lbl = "MID_AT_WND"; MID_AT_PV_lbl = "MID_AT_PV";
SE_WND_lbl = "SE_WND"; SE_PV_lbl = "SE_PV";
N_CEN_WND_lbl = "N_CEN_WND"; N_CEN_PV_lbl = "N_CEN_PV";
SW_WND_lbl = "SW_WND"; SW_PV_lbl = "SW_PV";
TX_WND_lbl = "TX_WND"; TX_PV_lbl = "TX_PV";

#----
#----------

num_of_incr = 70 #70
num_top_hours = 75

num_count = collect(1000:1000:num_of_incr*1000)

function curve_sub(region_demand, cap_factor_array,r_name)
    
    name = r_name
    global region_dem_df = DataFrame()

    for j in 1:length(num_count)
        incr_dem = zeros(8760)
        
        for i in 1:8760
            incr_dem[i] = region_demand[i] - cap_factor_array[i] * num_count[j]
        end
        #colname = "For Cluster $k: Iter $i"
        colname = "Incr $j"
        global region_dem_df[!,colname] = vec(incr_dem)

    end
    #CSV.write("NE_curve_sub_clus_$cluster_count.csv", region_dem_df)
    #CSV.write("$name Curve Top $num_top_hours Hrs Clus $cluster_count.csv", region_dem_df)
    
end # this function adjusts net demand as penetration level increases for each respective resource

function maxk(a,k) 
    b = partialsortperm(a,1:k,rev=true)
    return collect(zip(b, a[b]))
end # this function selects the top hours

function cluster_op(clus_dem,clus_cap_fact, r_name)
    
    name = r_name
    num_hr = num_top_hours # number of top hours to select

    global A = zeros(num_hr,5,num_of_incr)
    global avg_by_incr = []
    #global avg_by_incr = zeros(num_of_incr)
    #println(avg_by_incr)
    global pearson_coeff = []

    global clus_net_dem_df = DataFrame()

    for k in 1:num_of_incr # for each increment

        dem_array = clus_dem[!,k]
        j = maxk(dem_array,num_hr)

        MW_val = []
        Hour_val = []
        Day_val = []
        Hour_in_year = []
        top_cap_factors = []

        for i in 1:num_hr # for each of the top ours at a given increment
            tuple = j[i]

            Hr_in_yr = tuple[1]
            append!(Hour_in_year,Hr_in_yr)

            cap_factor = clus_cap_fact[tuple[1]]
            append!(top_cap_factors,cap_factor)

            mw_value = tuple[2]
            append!(MW_val,mw_value)

            array_location = tuple[1]
            day_of_occurence = (array_location ÷ 24) + 1 # uses integer divide to give day
            append!(Day_val,day_of_occurence)

            #println("Demand is ",mw_value, " (MW) at ", array_location," hours, on day ", day_of_occurence, " of the year.")
            lower =  (day_of_occurence - 1) * 24 + 1
            upper = (day_of_occurence - 1) * 24 + 24
            hour_in_day = mod(array_location,24)
            append!(Hour_val,hour_in_day)
           
        end

        top_hours_tbl = zeros(num_hr,5) #initialize array for 3 datapoints at each hour
        top_hours_tbl[:,1] = MW_val
        top_hours_tbl[:,2] = Hour_val
        top_hours_tbl[:,3] = Day_val
        top_hours_tbl[:,4] = Hour_in_year
        top_hours_tbl[:,5] = top_cap_factors
        global B = mean(top_cap_factors)
        #println(B)
        append!(avg_by_incr,B)
        #global avg_by_incr[k] = B


        top_hours_df = DataFrame(MW_value = (MW_val), Hour_in_day = (Hour_val), Day_in_year = (Day_val), Hour_In_Year = (Hour_in_year), Correlating_Cap_Factors = (top_cap_factors))
        #CSV.write("$name top hours clus $cluster_count Iter$k.csv", top_hours_df)
        
        global A[:,:,k] = top_hours_tbl

        #println(top_cap_factors)

    end

    iter_num = collect(1:1:num_of_incr)
    #avg_by_incr_mat = convert(Matrix, avg_by_incr)
    #println(avg_by_incr)


    #factor_df = DataFrame(Iter_Num = (iter_num), Average_Cap_Factor = (avg_by_incr))
    #CSV.write("$name Top $num_hr Hrs Clus $cluster_count.csv", factor_df)

    #global cluster_count += 1


end #This function determines the average capacity factor and produces output file


function avg_cap_fact(region_demand,cap_fact_series, r_name, reg_clus_count)
    global df = DataFrame()
    for i in 1:reg_clus_count
        curve_sub(region_demand,cap_fact_series[:,i], r_name)
        cluster_op(region_dem_df,cap_fact_series[:,i],r_name)
        colname = "$r_name $i"
        df[!,colname] = avg_by_incr
    end
    #CSV.write("$r_name Top $num_top_hours Hrs.csv", df)
end

avg_cap_fact(CA_demand,a_series,CA_WND_lbl, CA_WND_count)
df_CA_WND = df
avg_cap_fact(CA_demand,b_series,CA_PV_lbl, CA_PV_count)
df_CA_PV = df
avg_cap_fact(CA_demand,c_series,CA_OFWND_lbl, CA_OFWND_count)
df_CA_OFWND = df
df_CA = hcat(df_CA_WND,df_CA_PV,df_CA_OFWND)
CSV.write("CA Top $num_top_hours Hrs.csv", df_CA)

avg_cap_fact(NW_demand,d_series,NW_WND_lbl, NW_WND_count)
df_NW_WND = df
avg_cap_fact(NW_demand,e_series,NW_PV_lbl, NW_PV_count)
df_NW_PV = df
avg_cap_fact(NW_demand,f_series,NW_OFWND_lbl, NW_OFWND_count)
df_NW_OFWND = df
df_NW = hcat(df_NW_WND,df_NW_PV,df_NW_OFWND)
CSV.write("NW Top $num_top_hours Hrs.csv", df_NW)

avg_cap_fact(SW_demand,g_series,SW_WND_lbl, SW_WND_count)
df_SW_WND = df
avg_cap_fact(SW_demand,h_series,SW_PV_lbl, SW_PV_count)
df_SW_PV = df
df_SW = hcat(df_SW_WND,df_SW_PV)
CSV.write("SW Top $num_top_hours Hrs.csv", df_SW)

avg_cap_fact(TX_demand,i_series,TX_WND_lbl, TX_WND_count)
df_TX_WND = df
avg_cap_fact(TX_demand,j_series,TX_PV_lbl, TX_PV_count)
df_TX_PV = df
df_TX = hcat(df_TX_WND,df_TX_PV)
CSV.write("TX Top $num_top_hours Hrs.csv", df_TX)

avg_cap_fact(N_CEN_demand,k_series,N_CEN_WND_lbl, N_CEN_WND_count)
df_N_CEN_WND = df
avg_cap_fact(N_CEN_demand,l_series,N_CEN_PV_lbl, N_CEN_PV_count)
df_N_CEN_PV = df
df_N_CEN = hcat(df_N_CEN_WND,df_N_CEN_PV)
CSV.write("N_CEN Top $num_top_hours Hrs.csv", df_N_CEN)


avg_cap_fact(CEN_demand,m_series,CEN_WND_lbl, CEN_WND_count)
df_CEN_WND = df
avg_cap_fact(CEN_demand,n_series,CEN_PV_lbl, CEN_PV_count)
df_CEN_PV = df
df_CEN = hcat(df_CEN_WND,df_CEN_PV)
CSV.write("CEN Top $num_top_hours Hrs.csv", df_CEN)


avg_cap_fact(SE_demand,o_series,SE_WND_lbl, SE_WND_count)
df_SE_WND = df
avg_cap_fact(SE_demand,p_series,SE_PV_lbl, SE_PV_count)
df_SE_PV = df
df_SE = hcat(df_SE_WND,df_SE_PV)
CSV.write("SE Top $num_top_hours Hrs.csv", df_SE)


avg_cap_fact(MID_AT_demand,q_series,MID_AT_WND_lbl, MID_AT_WND_count)
df_MID_AT_WND = df
avg_cap_fact(MID_AT_demand,r_series,MID_AT_PV_lbl, MID_AT_PV_count)
df_MID_AT_PV = df
df_MID_AT = hcat(df_MID_AT_WND,df_MID_AT_PV)
CSV.write("MID_AT Top $num_top_hours Hrs.csv", df_MID_AT)


avg_cap_fact(NE_demand,s_series,NE_WND_lbl, NE_WND_count)
df_NE_WND = df
avg_cap_fact(NE_demand,t_series,NE_PV_lbl, NE_PV_count)
df_NE_PV = df
avg_cap_fact(NE_demand,u_series,NE_OFWND_lbl, NE_OFWND_count)
df_NE_OFWND = df
df_NE = hcat(df_NE_WND,df_NE_PV,df_NE_OFWND)
CSV.write("NE Top $num_top_hours Hrs.csv", df_NE)



end # module