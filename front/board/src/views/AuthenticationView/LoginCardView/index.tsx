
import React, { SetStateAction,Dispatch } from "react";
import { Typography } from "@mui/material";
import {
  Box,
  Grid,
  Card,
  TextField,
  FormControl,
  InputLabel,
  Input,
  InputAdornment,
  IconButton,
  Button,
} from "@mui/material";
import ContentPasteTwoToneIcon from "@mui/icons-material/ContentPasteTwoTone";
import VisibilityOff from "@mui/icons-material/VisibilityOff";
import Visibility from "@mui/icons-material/Visibility";
import { useState } from "react";



interface Props {
  setLoginView5 : Dispatch<SetStateAction<boolean>>
}

export default function LoginCardView({setLoginView5}: Props) {

  
  
  const [showPassword, setShowPassword] = useState<boolean>(false);
  return (
    <Box
      display="flex"
      sx={{
        height: "100%",
        flexDirection: "column",
        justifyContent: "space-between",
      }}
    >
      {/* //? 인풋공간*/}
      <Box>
        <Typography variant="h5" fontWeight="900">
          로그인
        </Typography>
        <TextField
          sx={{ mt: "40px" }}
          fullWidth
          label="이메일 주소"
          variant="standard"
        />

        <FormControl fullWidth variant="standard" sx={{ mt: "40px" }}>
          <InputLabel>비밀번호</InputLabel>
          <Input
            type={showPassword ? "text" : "password"}
            endAdornment={
              <InputAdornment position="end">
                <IconButton
                  aria-label="toggle password visibility"
                  onClick={() => setShowPassword(!showPassword)}
                >
                  {showPassword ? <VisibilityOff /> : <Visibility />}
                </IconButton>
              </InputAdornment>
            }
          />
        </FormControl>
      </Box>
      {/* //? 버튼공간*/}
      <Box>
        <Button sx={{ mb: "20px" }} fullWidth variant="contained" size="large">
          로그인
        </Button>
        <Typography textAlign={"center"}>
          신규사용자 이신가요?{" "}
          <Typography component="span" fontWeight={900} onClick={() => setLoginView5(false)}>
            회원가입
          </Typography>
        </Typography>
      </Box>
    </Box>
  );
}
