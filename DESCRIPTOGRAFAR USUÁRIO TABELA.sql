USE P12_PRODUCAO

-- USUÁRIO QUE CRIOU E ALTEROU UM PROCESSO
SELECT TOP 10

    C1_NUM AS CÓD_PROCESSO,
    C1_ITEM AS  ITEM,
    RIGHT((RTRIM(SUBSTRING(C1_USERLGI, 3, 1)+SUBSTRING(C1_USERLGI, 7, 1)+
    SUBSTRING(C1_USERLGI, 11,1)+SUBSTRING(C1_USERLGI, 15,1)+
    SUBSTRING(C1_USERLGI, 2, 1)+SUBSTRING(C1_USERLGI, 6, 1)+
    SUBSTRING(C1_USERLGI, 10,1)+SUBSTRING(C1_USERLGI, 14,1)+
    SUBSTRING(C1_USERLGI, 1, 1)+SUBSTRING(C1_USERLGI, 5, 1)+
    SUBSTRING(C1_USERLGI, 9, 1)+SUBSTRING(C1_USERLGI, 13,1)+
    SUBSTRING(C1_USERLGI, 17,1)+SUBSTRING(C1_USERLGI, 4, 1)+
    SUBSTRING(C1_USERLGI, 8, 1))),6) CÓD_USR_INCLUSÃO,

    RIGHT((RTRIM(SUBSTRING(C1_USERLGA, 3, 1)+SUBSTRING(C1_USERLGA, 7, 1)+
    SUBSTRING(C1_USERLGA, 11,1)+SUBSTRING(C1_USERLGA, 15,1)+
    SUBSTRING(C1_USERLGA, 2, 1)+SUBSTRING(C1_USERLGA, 6, 1)+
    SUBSTRING(C1_USERLGA, 10,1)+SUBSTRING(C1_USERLGA, 14,1)+
    SUBSTRING(C1_USERLGA, 1, 1)+SUBSTRING(C1_USERLGA, 5, 1)+
    SUBSTRING(C1_USERLGA, 9, 1)+SUBSTRING(C1_USERLGA, 13,1)+
    SUBSTRING(C1_USERLGA, 17,1)+SUBSTRING(C1_USERLGA, 4, 1)+
    SUBSTRING(C1_USERLGA, 8, 1))),6) CÓD_USR_ALTERAÇÃO,

    CONCAT(RIGHT(CONVERT(VARCHAR,
        DATEADD(DAY,
        ((ASCII(SUBSTRING(C1_USERLGA,12,1)) - 50) * 100 + (ASCII(SUBSTRING(C1_USERLGA,16,1)) - 50)),
        '19960101'),
        112),2),'/',SUBSTRING(CONVERT(VARCHAR,
            DATEADD(DAY,
            ((ASCII(SUBSTRING(C1_USERLGA,12,1)) - 50) * 100 + (ASCII(SUBSTRING(C1_USERLGA,16,1)) - 50)),
            '19960101'),
             112),5,2),'/',LEFT( CONVERT(VARCHAR,
                 DATEADD(DAY,
                 ((ASCII(SUBSTRING(C1_USERLGA,12,1)) - 50) * 100 + (ASCII(SUBSTRING(C1_USERLGA,16,1)) - 50)),
                  '19960101'),
                  112),4)) AS DT_ATUALIZAÇÃO,

    USR_CODIGO AS USR_ALTERAÇÃO

    FROM SC1010

    LEFT JOIN SYS_USR ON RIGHT((RTRIM(SUBSTRING(C1_USERLGI, 3, 1)+SUBSTRING(C1_USERLGI, 7, 1)+
    SUBSTRING(C1_USERLGA, 11,1)+SUBSTRING(C1_USERLGA, 15,1)+
    SUBSTRING(C1_USERLGA, 2, 1)+SUBSTRING(C1_USERLGA, 6, 1)+
    SUBSTRING(C1_USERLGA, 10,1)+SUBSTRING(C1_USERLGA, 14,1)+
    SUBSTRING(C1_USERLGA, 1, 1)+SUBSTRING(C1_USERLGA, 5, 1)+
    SUBSTRING(C1_USERLGA, 9, 1)+SUBSTRING(C1_USERLGA, 13,1)+
    SUBSTRING(C1_USERLGA, 17,1)+SUBSTRING(C1_USERLGA, 4, 1)+
    SUBSTRING(C1_USERLGA, 8, 1))),6) = LEFT(SYS_USR.USR_ID,6)

    WHERE C1_NUM = '013514'
    
    ORDER BY SC1010.R_E_C_N_O_ ASC