package poly.service.impl;

import java.io.File;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import net.sourceforge.tess4j.ITesseract;
import net.sourceforge.tess4j.Tesseract;
import poly.dto.OcrDTO;
import poly.service.IOcrService;
import poly.util.CmmUtil;


@Service("OcrService")
public class OcrService implements IOcrService {
	
	
	//로그 파일 생성 및 로그 출력을 위한 log4j 프레임워크의 자바 객체
	private Logger log = Logger.getLogger(this.getClass());
	
	/**
	 * 이미지 파일로부터 문자 읽어 오기
	 * 
	 * @param pDTO 이미지 파일 정도
	 * @return pDTO 이미지로부터 읽은 문자열
	 */
	@Override
	public OcrDTO getReadforImageText(OcrDTO pDTO) throws Exception {
		
		if(pDTO==null) {
			pDTO = new OcrDTO();
			log.info("pDTO에 값이 없어서 강제로 메모리에 올림");
		}
		
		log.info("OcrService: 이미지 인식 서비스 시작");
		
		File imageFile = new File(CmmUtil.nvl(pDTO.getFilePath()) + "//" + CmmUtil.nvl(pDTO.getFileName()));
		
		//OCR 기술 사용을 위한 Tesseract 플랫폼 객체 생성
		ITesseract instance = new Tesseract();
		
		//OCR 분석에 필요한 기준 데이터(이미 각 나라의 언어별로 학습시킨 데이터 위치 폴더)
		//저장 경로는 물리경로를 사용함(전체 경로)
		instance.setDatapath("C:\\tess-data");
		
		//한국어 학습 데이터 선택(기본 값은 영어)
		instance.setLanguage("kor"); //한국어 설정
		//instance.setLanguage("eng"); //영어 설정
		
		// 이미지 파일로부터 텍스트 읽기
		String result = instance.doOCR(imageFile);
		
		//읽은 글자를 DTO에 저장하기
		pDTO.setTextFromImage(result);
		
		log.info("인식된 이미지 : " + result);
		
		log.info("OcrService: 서비스 종료 컨트롤러로 반환");
		
	
		
		return pDTO;
	}
	
}
