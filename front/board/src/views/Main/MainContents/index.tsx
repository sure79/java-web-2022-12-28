import { Box, Grid, Pagination, Typography,Stack } from '@mui/material'
import React from 'react'
import BoardListItem from 'src/components/BoardListItem'
import PopularCard from 'src/components/PopularCard'
import {useEffect, useState} from 'react'
import { IPreviewItem } from 'src/interfaces'
import { BOARD_LIST } from 'src/mock'
import { isTemplateLiteralTypeSpan } from 'typescript'
import { getPageCount } from 'src/utils'
import usePagination from '@mui/material/usePagination/usePagination'
import { usePagingHook } from 'src/hooks'

//?  한 페이지에 5개의 게시물을 보여주고자 할때 
//? 배열의 시작 인덱스 5 x pageNumber - 5 = 0  ->  5 x (pageNumber -1)  (5의 의미는 글을 5개 보여준다. )
//? 배열의 마지막 인덱스 5 x pageNumber -1 = 4


export default function MainContents() {

  const {pageNumber, boardList, COUNT, viewList, onPageHandler, setBoardList} = usePagingHook();

  

  useEffect(() => {
    setBoardList(BOARD_LIST);

  }, [])

  
  return (
    <Box sx={{ p : '40px 120px', backgroundColor : 'rgba(0,0,0,0.05)'}}>
      <Box>
        <Typography sx={{ fontSize: '24px', fontWeight : 500}}>최신 게시물</Typography>
      </Box>
      <Box sx={{ pt: '20px', pb: '80px'}}>
        <Grid container spacing={3}>
          <Grid item sm = {12} md = {8}>
            <Stack spacing={2}>
              {viewList.map((boardItem) =>(<BoardListItem item={boardItem} />))}
            </Stack>
            
            
          </Grid>
          
          <Grid item sm = {12} md = {4}>
            <PopularCard title="인기 검색어"/>
          </Grid>
        </Grid>
      </Box>
      <Box sx={{ display : 'flex', justifyContent : 'center'}}>
        <Pagination page={pageNumber} count={getPageCount(boardList, COUNT)} onChange={(event, value)=> onPageHandler(value)}/>
      </Box>
    </Box>
  )
}
