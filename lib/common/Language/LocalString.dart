import 'package:get/get_navigation/get_navigation.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'entrypoint_bottombar1': 'Home',
          'entrypoint_bottombar2': 'Categories',
          'entrypoint_bottombar3': 'Investment',
          'entrypoint_bottombar4': 'Chat',
          'entrypoint_bottombar5': 'Profile',
          'entrypoint_exit1': 'Exit App',
          'entrypoint_exit2': 'Are you sure you want to Exit App?',
          'entrypoint_exit3': 'No',
          'entrypoint_exit4': 'Yes',
          'homepage_title1': 'Welcome',
          'homepage_title2':
              'We do not just provide you options. We want you to learn about the ones best suited for your needs.',
          'homepage_topPics': 'Top Picks',
          'homepage_ViewMore': 'View more',
          'homepage_Categories': 'Categories',
          'homepage_KnowlegeCenter': 'Knowledge center',
          'homepage_Scard': 'Retail banks wake up to digital',
          'homepage_Date': 'October 17 , 2022',
          'homepage_list_text1': 'Fractional Real Estate',
          'homepage_list_title1': 'Vaishnavi Tech Park Opportunity',
          "homepage_list_add1": 'Outer Ring Road Sarjapur,Bangalore',
          'homepage_list_text2': 'Alternative investment funds',
          'homepage_list_title2': 'Tata Consultancy Services',
          'homepage_list_add2': 'Banyan Park, Mumbai',
          'homepage_list_title3': 'Peer- Peer lending',
          'homepage_list_title4': 'Invoice Discounting',
          'homepage_list_title5': 'Revenue based Financing',
          'homepage_list_title6': 'Lease based Financing',
          'homepage_list_title7': 'Clean and Green Assets',
          'homepage_list_title8': 'Venture Debt',
          'homepage_list_title9': 'Secured Debt',
          'homepage_list_title10': 'High Yield Finance',
          'investment_title': 'Your investments',
          'investment_txt1': 'Current Investment',
          'investment_txt2': 'View All',
          'investment_txt3': 'Previously Invested Products',
          'investment_txt4': 'Suggested Invested Products',
          'investment_txt5': 'Thank You For Selling Product',
          'investment_txt6':
              'A FreeU Advisory Team will  get back to you soon.',
          'chats': 'Chats',
          'chats1': 'Send',
          'chats2': 'Type a Message',
          'profile': 'Profile',
          'profile_title': 'Your Profile',
          'profile_risk': 'Risk Profile',
          'sms': 'SMS updates',
          'smsOption': 'Opt Out / Opt In',
          'profile_name': 'First Name',
          'profile_nameV1': 'Please enter a Username',
          'profile_nameV2':
              'Please enter a valid username (letters and numbers only)',
          'profile_nameFirst': 'Enter First Name',
          'profile_lastName': 'Last Name',
          'profile_lastnameV1': 'Please enter last name',
          'profile_lastnameV2':
              'Please enter a valid name (letters and numbers only)',
          'profile_lastNameV1': 'Enter Last Name',
          'profile_phone': 'Phone Number',
          'profile_phoneV1': 'Mobile number is required',
          'profile_phoneV2': 'Enter valid mobile number',
          'profile_phoneV3': 'Enter Phone Number',
          'profile_emailV1': 'Please enter your email',
          'profile_emailV2': 'Please enter a valid email address',
          'profile_emailV3': 'Enter Email ID',
          'profile_email': 'Email ID',
          'profile_add': 'Address',
          'profile_update': 'Update',
          'kyc': 'KYC',
          'kyc_step1': 'Step 1 : Complete your KYC',
          'kyc_step1_info': 'Personal Information',
          'kyc_step1_info1':
              'Provide your personal information as per your Bank Account',
          'kyc_step1_number': 'Contact Number',
          'kykyc_step1_numberV1': 'Please Enter Phone Number',
          'kyc_residential': 'Residential Status',
          'dob': 'Date of Birth',
          'Occupation': 'Occupation',
          'Marketing manager': 'Marketing manager',
          'financial operations': 'financial operations',
          'Software developer': 'Software developer',
          "Father's Name": "Father's Name",
          "Please Enter Father's Name": "Please Enter Father's Name",
          'Continue': 'Continue',
          'kycStep2': 'Step 2 : Complete your KYC',
          'kycStep2_add': 'Address Details',
          'kycText1':
              'Provide your current correspondance address and upload an address proof of the same',
          'Country': 'Country',
          'Pincode': 'Pincode',
          'pincodeV1': 'Please Enter Pincode',
          'streetAdd': 'Address - Area and Street',
          'City': 'City',
          'State / Province/ Region': 'State / Province/ Region',
          'Document Type': 'Document Type',
          'Document Number': 'Document Number',
          'docV1': 'Please Enter Document Number',
          'kyctxt4': 'Please upload document front side',
          'kyctxt5': 'Please upload document back side(if applicable)',
          'kycStep3': 'Step 3 : Complete your KYC',
          'PAN & Aadhar details': 'PAN & Aadhar details',
          'Provide your PAN & Aadhar details':
              'Provide your PAN & Aadhar details',
          'PAN Number': 'PAN Number',
          'panV1': 'Please Enter PAN Number',
          'panUpload': 'Upload PAN card front side',
          'Aadhar Number': 'Aadhar Number',
          'aadharV1': 'Please Enter Aadhar Number',
          'Upload Aadhar card': 'Upload Aadhar card',
          'kycStep4': 'Step 4 : Complete your KYC',
          'Bank account details': 'Bank account details',
          'kycStep4_txt1': 'Provide your Bank account details',
          'IFSC code': 'IFSC code',
          'Account Number': 'Account Number',
          'kycStep4_txt2': 'Upload cancelled check/ Bank statement',
          'Bank Name': 'Bank Name',
          'Submit': 'Submit',
          'kycThankyou': 'Thankyou for updating your KYC',
          'enterName': 'Enter your First name ?',
          'enterAge': 'Enter your age?',
          'enterDiscription':
              'How would you describe your level of familiarity ?',
          'enterReason':
              "What is the primary reason you're interested in investing?",
          'enterIncome': 'What is your annual income ?',
          'enterPlan': 'How long do you plan to invest?',
          'enterHope':
              'How much do you hope to invest on a monthly/yearly basis?',
          'riskThankyou': 'Thankyou for updating your Risk Profile',
          'Security': 'Security',
          'How to Invest': 'How to Invest',
          'Update Risk Profile': 'Update Risk Profile',
          'About FreeU': 'About FreeU',
          'Our Insights': 'Our Insights',
          "FAQ's": "FAQ's",
          'Privacy Policy': 'Privacy Policy',
          'Terms and condition': 'Terms and condition',
          'Contact Us': 'Contact Us',
          'Logout': 'Logout',
          'Investor': 'Investor',
          'Guest': 'Guest',
          'Sign In/Sign up': 'Sign In/Sign up',
          'Language': 'Language',
          'Select Language': 'Select Language',
          'English': 'English',
          'Hindi': 'Hindi',
          'Loguot_Dialogue': 'Are you sure want to log out?',
          'Cancel': 'Cancel',
          'Please Enter IFSC code': 'Please Enter IFSC code',
          'Please Enter Account Number': 'Please Enter Account Number',
          'Please Enter Bank Name': 'Please Enter Bank Name',
          'Profile Photo': 'Profile Photo',
          'Camera': 'Camera',
          'Gallery': 'Gallery',
          'Investor profile': 'Investor profile',
          'Current Login PIN': 'Current Login PIN',
          "Enter 4 digit login pin": "Enter 4 digit login pin",
          "New Login PIN": "New Login PIN",
          "Confirm Login PIN": "Confirm Login PIN",
          "Enter 4 digit login pin"
              "Enter 4 digit login pin"
              "How to invest": "How to invest",
          "1. Create An Account": "1. Create An Account",
          "2. Choose an asset": "2. Choose an asset",
          "3. Invest": "3. Invest",
          "4. Easy returns": "4. Easy returns",
          'What is FreeU ?': 'What is FreeU ?',
          'whatsFreeU':
              'FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering thebest risk adjusted returns to our investors.',
          'Why FreeU ?': 'Why FreeU ?',
          'WhyFreeU':
              'Freeu is one-stop shop for Alternate Investments. We want you to learn, compare, and choose before you invest. Luckily, we have curated the best of the best’s options for you',
          'Experience': 'Experience',
          'ExpDiscr': 'Our great team of more than 1400 software experts.',
          'Quick Support': 'Quick Support',
          'QuickSupportDisc':
              'We’ll help you test bold new ideas while sharing your.',
          'Our Great Team': 'Our Great Team',
          'Founder, CEO': 'Founder, CEO',
          'Insights': 'Insights',
          'Search': 'Search',
          'All': 'All',
          'Fractional Real Estate': 'Fractional Real Estate',
          'Peer to Peer': 'Peer to Peer',
          'Read More': 'Read More',
          "Next": "Next",
          "Privacy policy": "Privacy policy",
          'policytxt1': '1. What Information Does the Service Collect?',
          'policytxt2':
              'By accessing this web site, you are agreeing to be bound by these web site Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws.',
          'policytxt3':
              'If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trade mark law.',
          'policytxt4': '2. Information You Provide About a Third Party',
          'policytxt5':
              'Whilst we try to ensure that the standard of the Website remains high and to maintain the continuity of it, the internet is not an inherently stable medium, and errors, omissions, interruptions of service and delays may occur at any time.',
          'policytxt6':
              'We do not accept any liability arising from any such errors, omissions, interruptions or delays or any ongoing obligation or responsibility to operate the Website (or any particular part of it) or to provide the service offered on the Website. We may vary the specification of this site from time to time without notice.',
          'policytxt7': '3. Revisions and Errata',
          'policytxt8':
              'You may only use the Website for lawful purposes when seeking employment or help with your career, when purchasing training courses or when recruiting staff. You must not under any circumstances seek to undermine the security of the Website or any information submitted to or available through it. In particular, but without limitation, you must not seek to access, alter or delete any information to which you do not have authorised access, seek to overload the system via spamming or flooding, take any action or use any device, routine or software to crash, delay, damage or otherwise interfere with the operation of the Website or attempt to decipher, disassemble or modify any of the software, coding or information comprised in the Website.',
          "Terms & condition": "Terms & condition",
          '1. Terms': '1. Terms',
          'Termstxt1':
              'By accessing this web site, you are agreeing to be bound by these web site Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws.',
          'Termstxt2':
              'If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trade mark law.',
          '2. Limitations': '2. Limitations',
          'Termstxt3':
              'Whilst we try to ensure that the standard of the Website remains high and to maintain the continuity of it, the internet is not an inherently stable medium, and errors, omissions, interruptions of service and delays may occur at any time.',
          'Termstxt4':
              'We do not accept any liability arising from any such errors, omissions, interruptions or delays or any ongoing obligation or responsibility to operate the Website (or any particular part of it) or to provide the service offered on the Website. We may vary the specification of this site from time to time without notice.',
          '3. Revisions and Errata': '3. Revisions and Errata',
          'Termstxt5':
              'You may only use the Website for lawful purposes when seeking employment or help with your career, when purchasing training courses or when recruiting staff. You must not under any circumstances seek to undermine the security of the Website or any information submitted to or available through it. In particular, but without limitation, you must not seek to access, alter or delete any information to which you do not have authorised access, seek to overload the system via spamming or flooding, take any action or use any device, routine or software to crash, delay, damage or otherwise interfere with the operation of the Website or attempt to decipher, disassemble or modify any of the software, coding or information comprised in the Website.',
          "Contact us": "Contact us",
          "Name*": "Name*",
          "Please Enter Your Name": "Please Enter Your Name",
          "  Enter Full Name": "  Enter Full Name",
          "Please Enter Full Name": "Please Enter Full Name",
          "Email ID*": "Email ID*",
          "Mobile number*": "Mobile number*",
          "Subject": "Subject",
          'Subject is required': 'Subject is required',
          "  Enter Subject": "  Enter Subject",
          "  Message": "  Message",
          "Send Now": "Send Now",
          'ContactThankyou': "Thankyou for contacting./nWill reach back to you",
          "*Required Field": "*Required Field",
          'Fractional Real Estate FAQ': 'Fractional Real Estate FAQ',
          'Peer to Peer Lending FAQ': 'Peer to Peer Lending FAQ',
          'Invoice discounting FAQ': 'Invoice discounting FAQ',
          'Alternative Investment Fund FAQ': 'Alternative Investment Fund FAQ',
          'Clean and Green Assets FAQ': 'Clean and Green Assets FAQ',
          'Securitized Debt Instrument FAQ': 'Securitized Debt Instrument FAQ',
          'FractionalFAQtxt1':
              'When I invest in a fractional ownership asset, what do I actually own?',
          'FractionalFAQtxt2':
              "You’ll own equity or debentures or both depending on the structure of SPV.",
          'FractionalFAQtxt3': 'Is FRE investment compliant?',
          'FractionalFAQtxt4':
              'Yes. Since the investment is routed through an SPV and investors are given a shareholding in the very same SPV, all investment records are filed under the ROC (Registrar of Companies) and need to be compliant with the Companies Act. The investment portal dealing with FRE needs to have a license from RERA (Real Estate Regulatory Authority) in order to carry out its operations.',
          'FractionalFAQtxt5': 'Can NRIs invest in Commercial Real Estate?',
          'FractionalFAQtxt6':
              'Yes. Any Indian citizen or an NRI (Non-Resident Indian) can own commercial real estate provided that a valid KYC (Know Your Customer), and documents are there, and regulatory guidelines are met. But NRIs can only make investments through their NRO (non-resident ordinary) accounts.',
          'FractionalFAQtxt7':
              'What are the documents needed to invest in fractional ownership of real estate?',
          'FractionalFAQtxt8':
              'PAN card, address proof (Aadhar/Passport), bank account details for transfer of money, and depending on the property, and the platform, sometimes demat account number.',
          'FractionalFAQtxt9': 'Is fractional ownership risky?',
          'FractionalFAQtxt10':
              'All investments carry risks. Therefore, in the case of fractional ownership, risks inherent to properties are also applicable in fractional ownership. Typical risks include liquidity, re-lease ability if the tenant leaves, and potential loss of capital.',
          'FractionalFAQtxt11': 'Modes of Exit from Fractional CRE?',
          'FractionalFAQtxt12':
              "Exits happen in three ways—in the resale market is done through the investor's dashboard, private sales where investors are free to sell their fractional ownership to anyone on their own. The third way to exit fractional ownership is through complete asset sale, which requires agreement from the majority investors in the SPV.",
          'FractionalFAQtxt13':
              'How is Fractional Ownership different from investing in REIT?',
          'FractionalFAQtxt14':
              'REIT (Real Estate Investment Trust)  are similar to mutual funds in that they pool funds from investors and invest in profitable real estate assets such as government bonds, direct equity, and stocks, among others. However, investors cannot choose the property to invest in with REITs, whereas fractional ownership allows investors to select their desired property.',
          'PeerFAQ1': 'How does Peer-to-Peer Lending work?',
          'PeerFAQ2':
              'The Peer-2-Peer online platforms connects the lender (investor) with the borrower directly, after evaluating the credit worthiness of the borrowers. The borrower gets the loan, and the investor earn interest on the loan payments.',
          'PeerFAQ3': 'What are the benefits of peer-to-peer lending?',
          'PeerFAQ4':
              'Peer-to-peer lending can provide several benefits, including lower interest rates for borrowers, higher returns for investors, and more flexible loan terms. Peer-to-peer lending can also provide access to credit for borrowers who may not qualify for traditional bank loans.',
          'PeerFAQ5': 'Who can invest in Peer-to-peer?',
          'PeerFAQ6':
              'Any individual, body of individuals, HUF, firm, society or any artificial body, whether incorporated or not, with a valid bank account in India and PAN card can be a lender on a P2P Platform. Also, any NBFC listed by the RBI or companies under the Indian Companies Act can apply as lenders or investors as well.',
          'PeerFAQ7':
              'What happens in the case of delayed non-payment by a borrower?',
          'PeerFAQ8':
              'Usually, the borrower is charged with an additional penal interest charge for the duration of the delay, and the borrower will be required to pay directly to his lender.',
          'PeerFAQ9':
              'Are there any restrictions on the maximum amount a lender can invest on peer-to-peer?',
          'PeerFAQ10':
              'Across all peer-to-peer lending platforms regulated by the RBI you can invest a maximum of ₹50 lakhs. However, if a lender lends above Rs 10,00,000, a certificate from a practising Chartered Accountant certifying minimum net-worth of Rs 50,00,000.',
          'PeerFAQ11': 'Is P2P lending regulated?',
          'PeerFAQ12':
              'Yes, only NBFCs with P2P license can enable P2P Lending. Every P2P lender should obtain a certificate of registration from the RBI.',
          'PeerFAQ13': 'What are the risks of peer-to-peer lending?',
          'PeerFAQ14':
              'The main risk of peer-to-peer lending is the possibility of default by the borrower. If the borrower defaults on the loan, investors may lose a portion or all of their investment. All the P2P platforms try and minimize the lender’s risks through a strict, thorough verification and credit underwriting process.',
          'InvoiceFAQ1': 'What is invoice discounting?',
          'InvoiceFAQ2':
              'Invoice Discounting is the practice of lending a working capital against a company’s unpaid invoices, in order to maintain the cash flow. This helps the companies with the capital crunch, and the lenders get back their money with interest',
          'InvoiceFAQ3': 'How does invoice discounting work?',
          'InvoiceFAQ4':
              'Invoice discounting involves three parties: the business selling its invoices (the seller), the financing company (the funder), and the customer who owes money to the business (the debtor). The seller submits unpaid invoices to the funder who pays a percentage upfront (around 80-90%). The funder collects the full amount from the debtor and deducts their fee before paying the remaining amount to the seller.',
          'InvoiceFAQ5': 'Is Invoice Discounting a Secured Product?',
          'InvoiceFAQ6': 'No, Invoice Discounting is an Unsecured Product.',
          'InvoiceFAQ7': 'Can an NRI invest in Invoice Discounting?',
          'InvoiceFAQ8':
              'An NRI can register, and invest in Invoice Discounting opportunities. But he/she needs to provide proof of Indian citizenship, along with an Indian Passport to complete KYC. Additionally, one will require an NRO bank account for debiting and crediting funds.',
          'InvoiceFAQ9':
              'What is the repayment period for invoice discounting?',
          'InvoiceFAQ10':
              'The loan tenure is the credit period that the seller agreed with the buyer as per the terms of sale. The period gets over on the last date of the credit period of the invoice or on the date of payment of invoice value, whichever is earlier.',
          'InvoiceFAQ11':
              'What happens if the debtor does not pay the invoice?',
          'InvoiceFAQ12':
              'The main risk associated with invoice discounting is the risk of non-payment. If the debtor does not pay the invoice, the financing company may pursue legal action to recover the funds owed. However, the risk of non-payment is usually borne by the seller, who may be required to repurchase the invoice from the funder or provide additional collateral to secure the financing.',
          'InvoiceFAQ13': 'What will be the tax impact?',
          'InvoiceFAQ14':
              'These resulting gains are taxable at applicable marginal tax rates under the head “Income from Other Sources”. TDS provisions are not applicable.',
          'AlternativeFAQ1':
              'Who can invest in an alternative investment fund?',
          'AlternativeFAQ2':
              'Due to the risks involved, investing in an alternative investment fund is typically limited to accredited investors, institutional investors, and high-net-worth individuals.',
          'AlternativeFAQ3': 'Can NRIs invest in AIF?',
          'AlternativeFAQ4':
              'NRIs (Non-Resident Indians) are allowed to invest in AIFs subject to compliance with the necessary rules and regulations as per the Foreign Exchange Management Act (FEMA) and other applicable laws.',
          'AlternativeFAQ5': 'How to invest in an AIF?',
          'AlternativeFAQ6':
              'Proof of income, PAN card, and ID proof are required to invest in an AIF. The minimum investment amount for AIFs is INR 1 crore, while for angel funds, it is INR 25 lakhs.',
          'AlternativeFAQ7': 'Who regulates the AIF?',
          'AlternativeFAQ8':
              'The regulation of Alternative Investment Funds (AIF) in India is done by the Securities and Exchange Board of India (SEBI).  Investors can address their complaints against AIFs at the SEBI-regulated web-based centralized grievance redress system called SCORES or SEBI Complaint Redress System.',
          'AlternativeFAQ9': 'How is an AIF tenure calculated?',
          'AlternativeFAQ10':
              'The tenure of any scheme of the AIF is calculated from the date of the final closing of the scheme.',
          'AlternativeFAQ11':
              'What is the general fee structure under the AIF scheme?',
          'AlternativeFAQ12':
              'The fee structure under the AIF scheme includes a one-time setup fee (if applicable) and two types of compensation: a flat management fee charged proportionately every month based on the funds managed, and a performance-based fee computed based on a pre-agreed proportion of the profit earned over and above a predetermined threshold return.',
          'AlternativeFAQ13':
              'Can an AIF accept investments from more than one investor?',
          'AlternativeFAQ14':
              'An AIF accepts two individuals as joint partners for a minimum investment of one crore rupees. Joint investors may include an investor and their spouse, parent, or child. Only two persons can act as joint investors for an AIF, and for any other investors acting as joint investors, the minimum investment amount of INR 1 crore shall apply.',
          'CleanFAQ1': 'What is green asset investing?',
          'CleanFAQ2':
              'Green asset investing is a socially responsible investment strategy that targets companies with a positive environmental impact, such as renewable energy, environmental technology, and natural resource conservation. While profit is not the primary focus, studies suggest that green investing can be more profitable than traditional assets.',
          'CleanFAQ3': 'What are examples of clean and green assets?',
          'CleanFAQ4':
              'Clean and green assets include renewable energy infrastructure like wind turbines, solar panels, and hydroelectric power plants, energy-efficient buildings such as LEED-certified buildings and green roofs, electric vehicles, waste reduction, and recycling facilities.',
          'CleanFAQ5':
              'What are the risks associated with investing in clean and green assets?',
          'CleanFAQ6':
              'Investing in clean and green assets carries risks, particularly for investors unfamiliar with the technology or regulatory environment. Potential risks include changes in government policy or incentives, energy price fluctuations, and the possibility of technology becoming obsolete.',
          'CleanFAQ7': 'Benefits of investing in clean and green assets',
          'CleanFAQ8':
              'Investing in clean and green assets is crucial as it reduces the adverse environmental impact of human activities, including energy production and consumption. These assets also mitigate climate change effects by reducing greenhouse gas emissions and promoting the use of renewable energy sources. It also provides financial benefits through reduced operating costs, government incentives, and energy production revenue.',
          'CleanFAQ9':
              'How can investors participate in the clean and green asset market?',
          'CleanFAQ10':
              'Investors can participate in the clean and green asset market in several ways, including investing in publicly traded companies that specialize in clean energy or sustainable infrastructure, investing in mutual funds or exchange-traded funds (ETFs) that focus on clean and green assets, or investing directly in clean energy projects through private equity or debt financing.',
          'CleanFAQ11': 'How is the clean and green asset market growing?',
          'CleanFAQ12':
              'The clean and green asset market is growing rapidly, driven by increasing demand for renewable energy, energy-efficient infrastructure, and sustainable buildings. In addition, many governments around the world are providing incentives for clean and green asset development, further driving growth in the market.',
          'SecureFAQ1': 'How does securitization work?',
          'SecureFAQ2':
              'Securitization works by creating a special purpose vehicle (SPV) that purchases a pool of similar debt instruments from a lender or originator. The SPV then issues securities that are backed by the payments on those debts.',
          'SecureFAQ3':
              'What are the benefits of securitized debt instruments?',
          'SecureFAQ4':
              'Securitized debt instruments can provide several benefits, including diversification, liquidity, and potentially higher yields.',
          'SecureFAQ5': 'What are the risks of securitized debt instruments?',
          'SecureFAQ6':
              'Securitized debt instruments can be risky, especially if the underlying debt instruments are of low quality or if the credit ratings are not accurate. In addition, securitization can be complex and difficult to understand, which may lead to mispricing or overvaluation of the securities.',
          'SecureFAQ7': 'What types of debt instruments can be securitized?',
          'SecureFAQ8':
              'Almost any type of debt instrument can be securitized, including mortgages, auto loans, credit card debt, student loans, and corporate loans. The most common types of securitized debt instruments are mortgage-backed securities (MBS) and asset-backed securities (ABS).',
          'SecureFAQ9':
              'What are the regulations governing the securitized debt market?',
          'SecureFAQ10':
              'SEBI (Issue and Listing of Securitized Debt Instruments and Security Receipts) Regulations, introduced in 2008, established SDI.',
          'SecureFAQ11': 'Can NRI invest in SDI?',
          'SecureFAQ12':
              'Yes, Non-Resident Indians are permitted to invest in SDIs issued by Indian entities, subject to the rules and regulations set by the Reserve Bank of India (RBI) and the Securities and Exchange Board of India (SEBI).',
          'SecureFAQ13': 'Are SDIs liquid investments?',
          'SecureFAQ14':
              "SDIs' liquidity may vary based on the transaction structure and market conditions. SDIs can be traded on secondary markets, providing liquidity to investors, but careful consideration of liquidity needs is advised before investing.",
        },
        'hi_IN': {
          'entrypoint_bottombar1': 'होम',
          'entrypoint_bottombar2': 'श्रेणियाँ',
          'entrypoint_bottombar3': 'निवेश',
          'entrypoint_bottombar4': 'चैट',
          'entrypoint_bottombar5': 'प्रोफ़ाइल',
          'entrypoint_exit1': 'ऐप से बाहर निकलें',
          'entrypoint_exit2': 'क्या आप ऐप से बाहर निकलना चाहते हैं?',
          'entrypoint_exit3': 'जी नहीं।',
          'entrypoint_exit4': 'हाँ।',
          'homepage_title1': 'स्वागत',
          'homepage_title2':
              'हम आपको केवल विकल्प ही प्रदान नहीं करते हैं। हम चाहते हैं कि आप उन लोगों के बारे में जानें जो आपकी आवश्यकताओं के लिए सबसे उपयुक्त हैं।',
          'homepage_topPics': 'शीर्ष चयन',
          'homepage_ViewMore': 'अधिक देखें',
          'homepage_Categories': 'श्रेणियाँ',
          'homepage_KnowlegeCenter': 'ज्ञान केंद्र',
          'homepage_Scard': 'खुदरा बैंक डिजिटल की ओर जागृत हो रहे हैं।',
          'homepage_Date': '१७ अक्टूबर, २०२२',
          'homepage_list_text1': 'अंशदार रियल एस्टेट',
          'homepage_list_title1': 'वैष्णवी टेक पार्क अवसर',
          "homepage_list_add1": 'आउटर रिंग रोड सर्जापुर, बैंगलोर',
          'homepage_list_text2': 'वैकल्पिक निवेश फंड ',
          'homepage_list_title2': 'टाटा कंसल्टेंसी सर्विसेज ',
          'homepage_list_add2': 'बंयान पार्क, मुंबई',
          'homepage_list_title3': 'पीयर-पीयर लेंडिंग',
          'homepage_list_title4': 'इनवॉइस डिस्काउंटिंग ',
          'homepage_list_title5': 'राजस्व आधारित वित्तपोषण',
          'homepage_list_title6': 'लीज़ आधारित वित्तपोषण',
          'homepage_list_title7': 'स्वच्छ और हरे संपत्ति ',
          'homepage_list_title8': 'वेंचर डेब्ट',
          'homepage_list_title9': 'सुरक्षित डेब्ट',
          'homepage_list_title10': 'उच्च यील्ड वित्त',
          'investment_title': 'आपके निवेश',
          'investment_txt1': 'वर्तमान निवेश',
          'investment_txt2': 'सभी देखें',
          'investment_txt3': 'पहले निवेश किए गए उत्पादों',
          'investment_txt4': 'सुझाए गए निवेश उत्पाद',
          'investment_txt5': 'उत्पाद बेचने के लिए धन्यवाद',
          'investment_txt6':
              'फ्रीयू सलाहकार टीम जल्द ही आपसे वापस संपर्क करेगी।',
          'chats': 'चैट्स',
          'chats1': 'भेजें',
          'chats2': 'संदेश टाइप करें',
          'profile': 'प्रोफ़ाइल',
          'profile_title': 'आपकी प्रोफ़ाइल',
          'profile_risk': 'जोखिम प्रोफ़ाइल',
          'sms': 'एसएमएस अपडेट',
          'smsOption': 'ऑप्ट आउट / ऑप्ट इन',
          'profile_name': 'पहला नाम',
          'profile_nameV1': 'कृपया एक उपयोगकर्ता नाम दर्ज करें',
          'profile_nameV2':
              'कृपया एक मान्य उपयोगकर्ता नाम दर्ज करें (केवल अक्षर और संख्याएं)।',
          'profile_nameFirst': 'पहला नाम दर्ज करें',
          'profile_lastName': 'अंतिम नाम',
          'profile_lastnameV1': 'कृपया अंतिम नाम दर्ज करें',
          'profile_lastnameV2':
              'कृपया एक मान्य नाम दर्ज करें (केवल अक्षर और संख्याएं)।',
          'profile_lastNameV1': 'अंतिम नाम दर्ज करें',
          'profile_phone': 'फ़ोन नंबर',
          'profile_phoneV1': 'मोबाइल नंबर आवश्यक है',
          'profile_phoneV2': 'मान्य मोबाइल नंबर दर्ज करें',
          'profile_phoneV3': 'फ़ोन नंबर दर्ज करें',
          'profile_emailV1': 'कृपया अपना ईमेल दर्ज करें',
          'profile_emailV2': 'कृपया एक मान्य ईमेल पता दर्ज करें',
          'profile_emailV3': 'ईमेल आईडी दर्ज करें',
          'profile_email': 'ईमेल आईडी',
          'profile_add': 'पता',
          'profile_update': 'अपडेट करें',
          'kyc': 'केवाईसी',
          'kyc_step1': 'Step 1 :अपनी केवाईसी पूरी करें',
          'kyc_step1_info': 'व्यक्तिगत जानकारी',
          'kyc_step1_info1':
              'अपने बैंक खाते के अनुसार अपनी व्यक्तिगत जानकारी प्रदान करें',
          'kyc_step1_number': 'संपर्क नंबर',
          'kykyc_step1_numberV1': 'कृपया फ़ोन नंबर दर्ज करें',
          'kyc_residential': 'निवासी स्थिति',
          'dob': 'जन्म तिथि',
          'Occupation': 'पेशा',
          'Marketing manager': 'विपणन प्रबंधक',
          'financial operations': 'वित्तीय संचालन',
          'Software developer': 'सॉफ्टवेयर डेवलपर',
          "Father's Name": "पिता का नाम",
          "Please Enter Father's Name": "कृपया पिता का नाम दर्ज करें",
          'Continue': 'जारी रखें',
          'kycStep2': 'Step 2 : अपना केवाईसी पूरा करें',
          'kycStep2_add': 'पते का विवरण',
          'kycText1':
              'अपना वर्तमान पत्राचार पता प्रदान करें और उसी का पता प्रमाण अपलोड करें',
          'Country': 'देश',
          'Pincode': 'पिन कोड',
          'pincodeV1': 'कृपया पिनकोड दर्ज करें',
          'streetAdd': 'पता - क्षेत्र और गली',
          'City': 'शहर',
          'State / Province/ Region': 'राज्य / प्रांत / क्षेत्र',
          'Document Type': 'दस्तावेज़ का प्रकार',
          'Document Number': 'दस्तावेज़ संख्या',
          'docV1': 'कृपया दस्तावेज़ संख्या दर्ज करें',
          'kyctxt4': 'कृपया दस्तावेज़ सामने की ओर अपलोड करें',
          'kyctxt5': 'कृपया दस्तावेज़ के पीछे की ओर अपलोड करें (यदि लागू हो)',
          'kycStep3': 'चरण 3 : अपना केवाईसी पूरा करें',
          'PAN & Aadhar details': 'पैन और आधार विवरण',
          'Provide your PAN & Aadhar details':
              'अपना पैन और आधार विवरण प्रदान करें',
          'PAN Number': 'पैन नंबर',
          'panV1': 'कृपया पैन नंबर दर्ज करें',
          'panUpload': 'पैन कार्ड सामने की तरफ अपलोड करें',
          'Aadhar Number': 'आधार संख्या',
          'aadharV1': 'कृपया आधार संख्या दर्ज करें',
          'Upload Aadhar card': 'आधार कार्ड अपलोड करें',
          'kycStep4': 'चरण 4 : अपना केवाईसी पूरा करें',
          'Bank account details': 'बैंक के खाते का विवरण',
          'kycStep4_txt1': 'अपने बैंक खाते का विवरण प्रदान करें',
          'IFSC code': 'आईएफएससी कोड',
          'Account Number': 'खाता संख्या',
          'kycStep4_txt2': 'रद्द चेक/बैंक स्टेटमेंट अपलोड करें',
          'Bank Name': 'बैंक का नाम',
          'Submit': 'जमा करना',
          'kycThankyou': 'अपना केवाईसी अपडेट करने के लिए धन्यवाद',
          'enterName': 'अपना पहला नाम दर्ज करें ?',
          'enterAge': 'अपनी आयु दर्ज करें?',
          'enterDiscription': 'आप अपने परिचित के स्तर का वर्णन कैसे करेंगे?',
          'enterReason': "निवेश करने में आपकी रुचि का प्राथमिक कारण क्या है?",
          'enterIncome': 'अपनी वार्षिक आय क्या है ?',
          'enterPlan': 'आप कब तक निवेश करने की योजना बना रहे हैं?',
          'enterHope':
              'आप मासिक/वार्षिक आधार पर कितना निवेश करने की उम्मीद करते हैं?',
          'riskThankyou': 'अपनी जोखिम प्रोफ़ाइल अपडेट करने के लिए धन्यवाद',
          'Security': 'सुरक्षा',
          'How to Invest': 'कैसे निवेश करें',
          'Update Risk Profile': 'रिस्क प्रोफाइल अपडेट करें',
          'About FreeU': 'FreeU के बारे में',
          'Our Insights': 'हमारी अंतर्दृष्टि',
          "FAQ's": "अक्सर पूछे जाने वाले प्रश्न",
          'Privacy Policy': 'गोपनीयता नीति',
          'Terms and condition': 'नियम व शर्तें',
          'Contact Us': 'संपर्क करें',
          'Logout': 'लॉग आउट',
          'Investor': 'इन्वेस्टर',
          'Guest': 'अतिथि',
          'Sign In/Sign up': 'प्रवेश / साइन अप',
          'Language': 'भाषा',
          'Select Language': 'भाषा चुने',
          'English': 'अंग्रेज़ी',
          'Hindi': 'हिंदी',
          'Loguot_Dialogue': 'क्या आप वाकई लॉग आउट करना चाहते हैं?',
          'Cancel': ' रद्द करें',
          'Please Enter IFSC code': 'कृपया IFSC कोड दर्ज करें',
          'Please Enter Account Number': 'कृपया खाता संख्या दर्ज करें।',
          'Please Enter Bank Name': 'कृपया बैंक का नाम दर्ज करें',
          'Profile Photo': 'प्रोफाइल फोटो',
          'Camera': 'कैमरा',
          'Gallery': 'गैलरी',
          'Investor profile': 'निवेशक प्रोफ़ाइल',
          'Current Login PIN': 'वर्तमान लॉगिन पिन',
          "Enter 4 digit login pin": "4 अंकों का लॉगिन पिन दर्ज करें।",
          "New Login PIN": "नया लॉगिन पिन दर्ज करें",
          "Confirm Login PIN": "लॉगिन पिन की पुष्टि करें",
          "Enter 4 digit login pin"
              "4 अंकों वाला लॉगिन पिन दर्ज करें"
              "How to invest": "इन्वेस्ट कैसे करें",
          "1. Create An Account": "1. खाता बनाएँ",
          "2. Choose an asset": "2. एक संपत्ति चुनें",
          "3. Invest": "3. निवेश करें",
          "4. Easy returns": "4. आसान रिटर्न",
          'What is FreeU ?': 'फ्रीयू क्या है?',
          'whatsFreeU':
              'FreeU एक ऑनलाइन प्लेटफ़ॉर्म है जो वैकल्पिक निवेश स्थान में उपलब्ध सर्वोत्तम वित्तीय साधनों को चुनता है, जो हमारे निवेशकों को सर्वोत्तम जोखिम समायोजित रिटर्न प्रदान करता है।',
          'Why FreeU ?': 'फ्रीयू क्यों?',
          'WhyFreeU':
              'फ्रीयू वैकल्पिक निवेश के लिए वन-स्टॉप शॉप है। हम चाहते हैं कि आप निवेश करने से पहले सीखें, तुलना करें और चुनें। सौभाग्य से, हमने आपके लिए सबसे अच्छे विकल्पों में से सर्वश्रेष्ठ को क्यूरेट किया है',
          'Experience': 'अनुभव',
          'ExpDiscr': '1400 से अधिक सॉफ्टवेयर विशेषज्ञों की हमारी महान टीम।',
          'Quick Support': 'त्वरित समर्थन',
          'QuickSupportDisc':
              'हम आपकी साझा करते समय साहसिक नए विचारों का परीक्षण करने में आपकी सहायता करेंगे।',
          'Our Great Team': 'हमारी महान टीम',
          'Founder, CEO': 'संस्थापक, सीईओ',
          'Insights': 'अंतर्दृष्टि',
          'Search': 'खोज',
          'All': 'सभी',
          'Fractional Real Estate': 'आंशिक रियल एस्टेट',
          'Peer to Peer': 'पीयर टू पीयर',
          'Read More': 'और पढ़ें',
          "Next": "अगला",
          "Privacy policy": "गोपनीयता नीति",
          'policytxt1': '1. सेवा कौन सी जानकारी एकत्र करती है?',
          'policytxt2':
              'इस वेब साइट तक पहुँचने से, आप इन वेब साइट के उपयोग की शर्तों और नियमों, सभी लागू कानूनों और विनियमों से बाध्य होने के लिए सहमत हो रहे हैं, और सहमत हैं कि आप किसी भी लागू स्थानीय कानूनों के अनुपालन के लिए जिम्मेदार हैं।',
          'policytxt3':
              'यदि आप इनमें से किसी भी शर्त से सहमत नहीं हैं, तो आपको इस साइट का उपयोग करने या उस तक पहुंचने से प्रतिबंधित कर दिया गया है। इस वेब साइट में निहित सामग्री लागू कॉपीराइट और ट्रेडमार्क कानून द्वारा संरक्षित है।',
          'policytxt4':
              '2. आपके द्वारा तृतीय पक्ष के बारे में प्रदान की जाने वाली जानकारी',
          'policytxt5':
              'जबकि हम यह सुनिश्चित करने का प्रयास करते हैं कि वेबसाइट का मानक उच्च बना रहे और इसकी निरंतरता बनाए रखने के लिए, इंटरनेट एक स्वाभाविक रूप से स्थिर माध्यम नहीं है, और त्रुटियां, चूक, सेवा में रुकावट और देरी किसी भी समय हो सकती है।',
          'policytxt6':
              'हम ऐसी किसी भी त्रुटि, चूक, रुकावट या देरी या वेबसाइट (या इसके किसी विशेष भाग) को संचालित करने या वेबसाइट पर दी जाने वाली सेवा प्रदान करने के लिए किसी भी चल रहे दायित्व या जिम्मेदारी से उत्पन्न होने वाली किसी भी देयता को स्वीकार नहीं करते हैं। हम बिना सूचना के समय-समय पर इस साइट के विनिर्देशों को बदल सकते हैं।',
          'policytxt7': '3. संशोधन और इरेटा',
          'policytxt8':
              'रोजगार की तलाश करते समय या अपने करियर में मदद करते समय, प्रशिक्षण पाठ्यक्रम खरीदते समय या कर्मचारियों की भर्ती करते समय आप केवल वैध उद्देश्यों के लिए वेबसाइट का उपयोग कर सकते हैं। आपको किसी भी परिस्थिति में वेबसाइट या इसके माध्यम से प्रस्तुत या उपलब्ध किसी भी जानकारी की सुरक्षा को कम करने की कोशिश नहीं करनी चाहिए। विशेष रूप से, लेकिन बिना किसी सीमा के, आपको ऐसी किसी भी जानकारी तक पहुँचने, बदलने या हटाने की कोशिश नहीं करनी चाहिए, जिसके लिए आपके पास अधिकृत पहुँच नहीं है, स्पैमिंग या बाढ़ के माध्यम से सिस्टम को ओवरलोड करने की कोशिश करें, कोई कार्रवाई करें या किसी डिवाइस, रूटीन या सॉफ़्टवेयर का उपयोग करें क्रैश, देरी, क्षति या अन्यथा वेबसाइट के संचालन में हस्तक्षेप या वेबसाइट में शामिल किसी भी सॉफ़्टवेयर, कोडिंग या जानकारी को समझने, अलग करने या संशोधित करने का प्रयास।',
          "Terms & condition": "नियम व शर्त",
          '1. Terms': '1. शर्तें',
          'Termstxt1':
              'इस वेब साइट तक पहुँचने से, आप इन वेब साइट के उपयोग की शर्तों और नियमों, सभी लागू कानूनों और विनियमों से बाध्य होने के लिए सहमत हो रहे हैं, और सहमत हैं कि आप किसी भी लागू स्थानीय कानूनों के अनुपालन के लिए जिम्मेदार हैं।',
          'Termstxt2':
              'यदि आप इनमें से किसी भी शर्त से सहमत नहीं हैं, तो आपको इस साइट का उपयोग करने या उस तक पहुंचने से प्रतिबंधित कर दिया गया है। इस वेब साइट में निहित सामग्री लागू कॉपीराइट और ट्रेडमार्क कानून द्वारा संरक्षित है।',
          '2. Limitations': '2. सीमाएँ',
          'Termstxt3':
              'जबकि हम यह सुनिश्चित करने का प्रयास करते हैं कि वेबसाइट का मानक उच्च बना रहे और इसकी निरंतरता बनाए रखने के लिए, इंटरनेट एक स्वाभाविक रूप से स्थिर माध्यम नहीं है, और त्रुटियां, चूक, सेवा में रुकावट और देरी किसी भी समय हो सकती है।',
          'Termstxt4':
              'हम ऐसी किसी भी त्रुटि, चूक, रुकावट या देरी या वेबसाइट (या इसके किसी विशेष भाग) को संचालित करने या वेबसाइट पर दी जाने वाली सेवा प्रदान करने के लिए किसी भी चल रहे दायित्व या जिम्मेदारी से उत्पन्न होने वाली किसी भी देयता को स्वीकार नहीं करते हैं। हम बिना सूचना के समय-समय पर इस साइट के विनिर्देशों को बदल सकते हैं।',
          '3. Revisions and Errata': '3. संशोधन और इरेटा',
          'Termstxt5':
              'रोजगार की तलाश करते समय या अपने करियर में मदद करते समय, प्रशिक्षण पाठ्यक्रम खरीदते समय या कर्मचारियों की भर्ती करते समय आप केवल वैध उद्देश्यों के लिए वेबसाइट का उपयोग कर सकते हैं। आपको किसी भी परिस्थिति में वेबसाइट या इसके माध्यम से प्रस्तुत या उपलब्ध किसी भी जानकारी की सुरक्षा को कम करने की कोशिश नहीं करनी चाहिए। विशेष रूप से, लेकिन बिना किसी सीमा के, आपको ऐसी किसी भी जानकारी तक पहुँचने, बदलने या हटाने की कोशिश नहीं करनी चाहिए, जिसके लिए आपके पास अधिकृत पहुँच नहीं है, स्पैमिंग या बाढ़ के माध्यम से सिस्टम को ओवरलोड करने की कोशिश करें, कोई कार्रवाई करें या किसी डिवाइस, रूटीन या सॉफ़्टवेयर का उपयोग करें क्रैश, देरी, क्षति या अन्यथा वेबसाइट के संचालन में हस्तक्षेप या वेबसाइट में शामिल किसी भी सॉफ़्टवेयर, कोडिंग या जानकारी को समझने, अलग करने या संशोधित करने का प्रयास।',
          "Contact us": "संपर्क करें",
          "Name*": "नाम*",
          "Please Enter Your Name": "कृपया अपना नाम दर्ज करें",
          "  Enter Full Name": "  पूरा नाम दर्ज करें",
          "Please Enter Full Name": "कृपया पूरा नाम दर्ज करें",
          "Email ID*": "ईमेल आईडी*",
          "Mobile number*": "मोबाइल नंबर*",
          "Subject": "विषय",
          'Subject is required': 'विषय आवश्यक है',
          "  Enter Subject": "  विषय दर्ज करें",
          "  Message": "  संदेश",
          "Send Now": "अब भेजें",
          'ContactThankyou':
              "संपर्क करने के लिए धन्यवाद. \nआपसे वापस संपर्क करेंगे",
          "*Required Field": "*आवश्यक क्षेत्र",
          'Fractional Real Estate FAQ':
              'आंशिक अचल संपत्ति अक्सर पूछे जाने वाले प्रश्न',
          'Peer to Peer Lending FAQ': 'पीयर टू पीयर लेंडिंग एफएक्यू',
          'Invoice discounting FAQ': 'चालान छूट अक्सर पूछे जाने वाले प्रश्न',
          'Alternative Investment Fund FAQ':
              'वैकल्पिक निवेश कोष अक्सर पूछे जाने वाले प्रश्न',
          'Clean and Green Assets FAQ':
              'स्वच्छ और हरित संपत्ति अक्सर पूछे जाने वाले प्रश्न',
          'Securitized Debt Instrument FAQ':
              'प्रतिभूतिकृत ऋण लिखत अक्सर पूछे जाने वाले प्रश्न',
          'FractionalFAQtxt1':
              'जब मैं आंशिक स्वामित्व संपत्ति में निवेश करता हूं, तो वास्तव में मेरे पास क्या है?',
          'FractionalFAQtxt2':
              "एसपीवी की संरचना के आधार पर आपके पास इक्विटी या डिबेंचर या दोनों होंगे।",
          'FractionalFAQtxt3': 'क्या एफआरई निवेश अनुपालन करता है?',
          'FractionalFAQtxt4':
              'हाँ। चूंकि निवेश एक एसपीवी के माध्यम से किया जाता है और निवेशकों को उसी एसपीवी में शेयरधारिता दी जाती है, सभी निवेश रिकॉर्ड आरओसी (कंपनी रजिस्ट्रार) के तहत दायर किए जाते हैं और कंपनी अधिनियम के अनुरूप होने की आवश्यकता होती है। एफआरई से निपटने वाले निवेश पोर्टल को अपना संचालन करने के लिए रेरा (रियल एस्टेट नियामक प्राधिकरण) से लाइसेंस प्राप्त करने की आवश्यकता है।',
          'FractionalFAQtxt5':
              'क्या एनआरआई वाणिज्यिक रियल एस्टेट में निवेश कर सकते हैं?',
          'FractionalFAQtxt6':
              'हाँ। कोई भी भारतीय नागरिक या एक एनआरआई (अनिवासी भारतीय) वाणिज्यिक अचल संपत्ति का मालिक हो सकता है, बशर्ते कि एक वैध केवाईसी (अपने ग्राहक को जानें), और दस्तावेज हों, और नियामक दिशानिर्देशों को पूरा किया गया हो। लेकिन एनआरआई केवल अपने एनआरओ (अनिवासी साधारण) खातों के माध्यम से ही निवेश कर सकते हैं।',
          'FractionalFAQtxt7':
              'अचल संपत्ति के आंशिक स्वामित्व में निवेश करने के लिए कौन से दस्तावेज़ आवश्यक हैं?',
          'FractionalFAQtxt8':
              'पैन कार्ड, पता प्रमाण (आधार/पासपोर्ट), धन हस्तांतरण के लिए बैंक खाता विवरण, और संपत्ति के आधार पर, और मंच, कभी-कभी डीमैट खाता संख्या।',
          'FractionalFAQtxt9': 'क्या आंशिक स्वामित्व जोखिम भरा है?',
          'FractionalFAQtxt10':
              'सभी निवेश जोखिम उठाते हैं। इसलिए, आंशिक स्वामित्व के मामले में, संपत्तियों में निहित जोखिम आंशिक स्वामित्व में भी लागू होते हैं। विशिष्ट जोखिमों में तरलता, किरायेदार छोड़ने पर पुनः पट्टे की क्षमता और पूंजी की संभावित हानि शामिल है।',
          'FractionalFAQtxt11': 'आंशिक सीआरई से बाहर निकलने के तरीके?',
          'FractionalFAQtxt12':
              "निकास तीन तरीकों से होता है- पुनर्विक्रय बाजार में निवेशक के डैशबोर्ड के माध्यम से किया जाता है, निजी बिक्री जहां निवेशक अपने आंशिक स्वामित्व को किसी को भी बेचने के लिए स्वतंत्र होते हैं। आंशिक स्वामित्व से बाहर निकलने का तीसरा तरीका पूरी संपत्ति की बिक्री के माध्यम से है, जिसके लिए एसपीवी में बहुसंख्यक निवेशकों से सहमति की आवश्यकता होती है।",
          'FractionalFAQtxt13':
              'आंशिक स्वामित्व आरईआईटी में निवेश से अलग कैसे है?',
          'FractionalFAQtxt14':
              'आरईआईटी (रियल एस्टेट इन्वेस्टमेंट ट्रस्ट) म्यूचुअल फंड के समान हैं, जिसमें वे निवेशकों से फंड लेते हैं और लाभदायक रियल एस्टेट संपत्तियों जैसे कि सरकारी बॉन्ड, डायरेक्ट इक्विटी और स्टॉक में निवेश करते हैं। हालांकि, निवेशक आरईआईटी के साथ निवेश करने के लिए संपत्ति का चयन नहीं कर सकते, जबकि आंशिक स्वामित्व निवेशकों को उनकी वांछित संपत्ति का चयन करने की अनुमति देता है।',
          'PeerFAQ1': 'पीयर-टू-पीयर लेंडिंग कैसे काम करती है?',
          'PeerFAQ2':
              'पीयर-टू-पीयर ऑनलाइन प्लेटफॉर्म उधारकर्ताओं की क्रेडिट योग्यता का मूल्यांकन करने के बाद, ऋणदाता (निवेशक) को सीधे उधारकर्ता से जोड़ता है। उधारकर्ता को ऋण मिलता है, और निवेशक ऋण भुगतान पर ब्याज अर्जित करता है।',
          'PeerFAQ3': 'पीयर-टू-पीयर लेंडिंग के क्या फायदे हैं?',
          'PeerFAQ4':
              'पीयर-टू-पीयर उधार कई लाभ प्रदान कर सकता है, जिसमें उधारकर्ताओं के लिए कम ब्याज दर, निवेशकों के लिए उच्च रिटर्न और अधिक लचीली ऋण शर्तें शामिल हैं। पीयर-टू-पीयर उधार उन उधारकर्ताओं के लिए क्रेडिट तक पहुंच प्रदान कर सकता है जो पारंपरिक बैंक ऋणों के लिए योग्य नहीं हो सकते हैं।',
          'PeerFAQ5': 'पीयर-टू-पीयर में कौन निवेश कर सकता है?',
          'PeerFAQ6':
              'भारत में वैध बैंक खाते और पैन कार्ड के साथ कोई भी व्यक्ति, व्यक्तियों का निकाय, एचयूएफ, फर्म, समाज या कोई कृत्रिम निकाय, चाहे निगमित हो या नहीं, एक पी2पी प्लेटफॉर्म पर ऋणदाता हो सकता है। साथ ही, भारतीय कंपनी अधिनियम के तहत RBI या कंपनियों द्वारा सूचीबद्ध कोई भी NBFC ऋणदाता या निवेशक के रूप में भी आवेदन कर सकता है।',
          'PeerFAQ7':
              'उधारकर्ता द्वारा विलंबित भुगतान न करने की स्थिति में क्या होता है?',
          'PeerFAQ8':
              'आमतौर पर, उधारकर्ता पर देरी की अवधि के लिए अतिरिक्त दंडात्मक ब्याज शुल्क लगाया जाता है, और उधारकर्ता को सीधे अपने ऋणदाता को भुगतान करने की आवश्यकता होगी।',
          'PeerFAQ9':
              'क्या अधिकतम राशि पर कोई प्रतिबंध है जो एक ऋणदाता पीयर-टू-पीयर पर निवेश कर सकता है?',
          'PeerFAQ10':
              'आरबीआई द्वारा विनियमित सभी पीयर-टू-पीयर लेंडिंग प्लेटफॉर्म पर आप अधिकतम ₹50 लाख का निवेश कर सकते हैं। हालांकि, यदि कोई ऋणदाता 10,00,000 रुपये से अधिक का उधार देता है, तो अभ्यास करने वाले चार्टर्ड एकाउंटेंट से न्यूनतम नेट-वर्थ 50,00,000 रुपये प्रमाणित करने वाला एक प्रमाण पत्र।',
          'PeerFAQ11': 'क्या पी2पी उधार विनियमित है?',
          'PeerFAQ12':
              'हां, केवल पी2पी लाइसेंस वाली एनबीएफसी ही पी2पी ऋण दे सकती हैं। प्रत्येक पी2पी ऋणदाता को भारतीय रिजर्व बैंक से पंजीकरण प्रमाणपत्र प्राप्त करना चाहिए।',
          'PeerFAQ13': 'पीयर-टू-पीयर लेंडिंग के जोखिम क्या हैं?',
          'PeerFAQ14':
              'पीयर-टू-पीयर लेंडिंग का मुख्य जोखिम उधारकर्ता द्वारा डिफ़ॉल्ट की संभावना है। यदि उधारकर्ता ऋण पर चूक करता है, तो निवेशक अपने निवेश का एक हिस्सा या सभी निवेश खो सकते हैं। सभी पी2पी प्लेटफॉर्म एक सख्त, संपूर्ण सत्यापन और क्रेडिट अंडरराइटिंग प्रक्रिया के माध्यम से ऋणदाता के जोखिम को कम करने की कोशिश करते हैं।',
          'InvoiceFAQ1': 'चालान छूट क्या है?',
          'InvoiceFAQ2':
              'इनवॉइस डिस्काउंटिंग नकदी प्रवाह को बनाए रखने के लिए, किसी कंपनी के अवैतनिक चालानों के खिलाफ कार्यशील पूंजी उधार देने का अभ्यास है। इससे कंपनियों को पूंजी की कमी से जूझने में मदद मिलती है और उधारदाताओं को ब्याज सहित अपना पैसा वापस मिल जाता है',
          'InvoiceFAQ3': 'चालान छूट कैसे काम करती है?',
          'InvoiceFAQ4':
              'इनवॉइस डिस्काउंटिंग में तीन पक्ष शामिल होते हैं: अपने इनवॉइस बेचने वाला व्यवसाय (विक्रेता), वित्तपोषण करने वाली कंपनी (वित्तपोषक), और वह ग्राहक जो व्यवसाय के लिए धन का बकाया है (देनदार)। विक्रेता भुगतान करने वाले को अवैतनिक चालान जमा करता है जो प्रतिशत अग्रिम (लगभग 80-90%) का भुगतान करता है। फंडर देनदार से पूरी राशि एकत्र करता है और विक्रेता को शेष राशि का भुगतान करने से पहले उनका शुल्क काट लेता है।',
          'InvoiceFAQ5': 'क्या चालान छूट एक सुरक्षित उत्पाद है?',
          'InvoiceFAQ6': 'नहीं, इनवॉइस डिस्काउंटिंग एक असुरक्षित उत्पाद है।',
          'InvoiceFAQ7':
              'क्या एनआरआई इनवॉइस डिस्काउंटिंग में निवेश कर सकता है?',
          'InvoiceFAQ8':
              'एक एनआरआई चालान छूट के अवसरों में पंजीकरण और निवेश कर सकता है। लेकिन उसे केवाईसी पूरा करने के लिए भारतीय पासपोर्ट के साथ-साथ भारतीय नागरिकता का प्रमाण देना होगा। इसके अतिरिक्त, किसी को धन डेबिट और जमा करने के लिए एक एनआरओ बैंक खाते की आवश्यकता होगी।',
          'InvoiceFAQ9': 'चालान छूट के लिए चुकौती अवधि क्या है?',
          'InvoiceFAQ10':
              'ऋण अवधि वह क्रेडिट अवधि है जिसे विक्रेता बिक्री की शर्तों के अनुसार खरीदार के साथ सहमत करता है। अवधि चालान की क्रेडिट अवधि की अंतिम तिथि या चालान मूल्य के भुगतान की तिथि, जो भी पहले हो, पर समाप्त हो जाती है।',
          'InvoiceFAQ11':
              'यदि देनदार चालान का भुगतान नहीं करता है तो क्या होता है?',
          'InvoiceFAQ12':
              'इनवॉइस डिस्काउंटिंग से जुड़ा मुख्य जोखिम भुगतान न करने का जोखिम है। यदि देनदार चालान का भुगतान नहीं करता है, तो वित्तपोषण कंपनी बकाया राशि की वसूली के लिए कानूनी कार्रवाई कर सकती है। हालांकि, भुगतान न करने का जोखिम आमतौर पर विक्रेता द्वारा वहन किया जाता है, जिसे फंडर से इनवॉइस को पुनर्खरीद करने या वित्तपोषण को सुरक्षित करने के लिए अतिरिक्त संपार्श्विक प्रदान करने की आवश्यकता हो सकती है।',
          'InvoiceFAQ13': 'टैक्स का क्या असर होगा?',
          'InvoiceFAQ14':
              'ये परिणामी लाभ "अन्य स्रोतों से आय" के तहत लागू सीमांत कर दरों पर कर योग्य हैं। टीडीएस प्रावधान लागू नहीं हैं।',
          'AlternativeFAQ1': 'वैकल्पिक निवेश कोष में कौन निवेश कर सकता है?',
          'AlternativeFAQ2':
              'इसमें शामिल जोखिमों के कारण, एक वैकल्पिक निवेश कोष में निवेश आम तौर पर मान्यता प्राप्त निवेशकों, संस्थागत निवेशकों और उच्च-निवल मूल्य वाले व्यक्तियों तक सीमित होता है।',
          'AlternativeFAQ3': 'क्या एनआरआई एआईएफ में निवेश कर सकते हैं?',
          'AlternativeFAQ4':
              'एनआरआई (अनिवासी भारतीय) को विदेशी मुद्रा प्रबंधन अधिनियम (फेमा) और अन्य लागू कानूनों के अनुसार आवश्यक नियमों और विनियमों के अनुपालन के अधीन एआईएफ में निवेश करने की अनुमति है।',
          'AlternativeFAQ5': 'एआईएफ में निवेश कैसे करें?',
          'AlternativeFAQ6':
              'एआईएफ में निवेश करने के लिए आय का प्रमाण, पैन कार्ड और आईडी प्रूफ की आवश्यकता होती है। एआईएफ के लिए न्यूनतम निवेश राशि 1 करोड़ रुपये है, जबकि एंजल फंड के लिए यह 25 लाख रुपये है।',
          'AlternativeFAQ7': 'एआईएफ को कौन नियंत्रित करता है?',
          'AlternativeFAQ8':
              'भारत में वैकल्पिक निवेश कोष (एआईएफ) का विनियमन भारतीय प्रतिभूति और विनिमय बोर्ड (सेबी) द्वारा किया जाता है। निवेशक AIF के खिलाफ अपनी शिकायतों को SEBI-विनियमित वेब-आधारित केंद्रीकृत शिकायत निवारण प्रणाली जिसे SCORES या SEBI शिकायत निवारण प्रणाली कहा जाता है, पर संबोधित कर सकते हैं।',
          'AlternativeFAQ9': 'एआईएफ कार्यकाल की गणना कैसे की जाती है?',
          'AlternativeFAQ10':
              'एआईएफ की किसी भी योजना के कार्यकाल की गणना योजना के अंतिम समापन की तारीख से की जाती है।',
          'AlternativeFAQ11':
              'एआईएफ योजना के तहत सामान्य शुल्क संरचना क्या है?',
          'AlternativeFAQ12':
              'एआईएफ योजना के तहत शुल्क संरचना में एक बार का सेटअप शुल्क (यदि लागू हो) और दो प्रकार के मुआवजे शामिल हैं: एक फ्लैट प्रबंधन शुल्क हर महीने प्रबंधित धन के आधार पर आनुपातिक रूप से लिया जाता है, और एक प्रदर्शन-आधारित शुल्क पूर्व के आधार पर गणना की जाती है। पूर्व निर्धारित सीमा रिटर्न के ऊपर और ऊपर अर्जित लाभ का सहमत अनुपात।',
          'AlternativeFAQ13':
              'क्या एआईएफ एक से अधिक निवेशकों से निवेश स्वीकार कर सकता है?',
          'AlternativeFAQ14':
              'एआईएफ न्यूनतम एक करोड़ रुपए के निवेश पर दो व्यक्तियों को संयुक्त भागीदार के रूप में स्वीकार करता है। संयुक्त निवेशकों में एक निवेशक और उनके जीवनसाथी, माता-पिता या बच्चे शामिल हो सकते हैं। AIF के लिए केवल दो व्यक्ति संयुक्त निवेशक के रूप में कार्य कर सकते हैं, और संयुक्त निवेशक के रूप में कार्य करने वाले किसी भी अन्य निवेशक के लिए, INR 1 करोड़ की न्यूनतम निवेश राशि लागू होगी।',
          'CleanFAQ1': 'ग्रीन एसेट निवेश क्या है?',
          'CleanFAQ2':
              'ग्रीन एसेट इन्वेस्टमेंट एक सामाजिक रूप से जिम्मेदार निवेश रणनीति है जो सकारात्मक पर्यावरणीय प्रभाव वाली कंपनियों को लक्षित करती है, जैसे अक्षय ऊर्जा, पर्यावरण प्रौद्योगिकी और प्राकृतिक संसाधन संरक्षण। जबकि लाभ प्राथमिक ध्यान नहीं है, अध्ययनों से पता चलता है कि पारंपरिक संपत्ति की तुलना में हरित निवेश अधिक लाभदायक हो सकता है।',
          'CleanFAQ3': 'स्वच्छ और हरित संपत्ति के उदाहरण क्या हैं?',
          'CleanFAQ4':
              'स्वच्छ और हरित संपत्तियों में अक्षय ऊर्जा अवसंरचना जैसे पवन टर्बाइन, सौर पैनल, और पनबिजली संयंत्र, ऊर्जा-कुशल भवन जैसे LEED- प्रमाणित भवन और हरी छतें, बिजली के वाहन, अपशिष्ट में कमी और पुनर्चक्रण सुविधाएं शामिल हैं।',
          'CleanFAQ5':
              'स्वच्छ और हरित संपत्ति में निवेश से जुड़े जोखिम क्या हैं?',
          'CleanFAQ6':
              'स्वच्छ और हरित संपत्तियों में निवेश करने में जोखिम होता है, खासकर उन निवेशकों के लिए जो तकनीक या नियामक वातावरण से अपरिचित हैं। संभावित जोखिमों में सरकारी नीति या प्रोत्साहनों में परिवर्तन, ऊर्जा मूल्य में उतार-चढ़ाव और प्रौद्योगिकी के अप्रचलित होने की संभावना शामिल है।',
          'CleanFAQ7': 'स्वच्छ और हरित संपत्ति में निवेश के लाभ',
          'CleanFAQ8':
              'स्वच्छ और हरित संपत्तियों में निवेश महत्वपूर्ण है क्योंकि यह ऊर्जा उत्पादन और खपत सहित मानवीय गतिविधियों के प्रतिकूल पर्यावरणीय प्रभाव को कम करता है। ये संपत्तियां ग्रीनहाउस गैस उत्सर्जन को कम करके और नवीकरणीय ऊर्जा स्रोतों के उपयोग को बढ़ावा देकर जलवायु परिवर्तन के प्रभावों को कम करती हैं। यह कम परिचालन लागत, सरकारी प्रोत्साहन और ऊर्जा उत्पादन राजस्व के माध्यम से वित्तीय लाभ भी प्रदान करता है।',
          'CleanFAQ9':
              'स्वच्छ और हरित संपत्ति बाजार में निवेशक कैसे भाग ले सकते हैं?',
          'CleanFAQ10':
              'निवेशक स्वच्छ और हरित संपत्ति बाजार में कई तरह से भाग ले सकते हैं, जिसमें सार्वजनिक रूप से कारोबार करने वाली कंपनियों में निवेश करना शामिल है जो स्वच्छ ऊर्जा या टिकाऊ बुनियादी ढांचे में विशेषज्ञ हैं, म्युचुअल फंड या एक्सचेंज-ट्रेडेड फंड (ईटीएफ) में निवेश करते हैं जो स्वच्छ और हरित संपत्ति पर ध्यान केंद्रित करते हैं, या निजी इक्विटी या ऋण वित्तपोषण के माध्यम से स्वच्छ ऊर्जा परियोजनाओं में सीधे निवेश करना।',
          'CleanFAQ11': 'स्वच्छ और हरित संपत्ति बाजार कैसे बढ़ रहा है?',
          'CleanFAQ12':
              'अक्षय ऊर्जा, ऊर्जा-कुशल बुनियादी ढांचे और टिकाऊ इमारतों की बढ़ती मांग से संचालित स्वच्छ और हरित संपत्ति बाजार तेजी से बढ़ रहा है। इसके अलावा, दुनिया भर में कई सरकारें स्वच्छ और हरित संपत्ति के विकास के लिए प्रोत्साहन प्रदान कर रही हैं, जिससे बाजार में और वृद्धि हो रही है।',
          'SecureFAQ1': 'प्रतिभूतिकरण कैसे काम करता है?',
          'SecureFAQ2':
              'प्रतिभूतिकरण एक विशेष उद्देश्य वाहन (एसपीवी) बनाकर काम करता है जो एक ऋणदाता या प्रवर्तक से समान ऋण उपकरणों का एक पूल खरीदता है। एसपीवी तब प्रतिभूतियां जारी करता है जो उन ऋणों के भुगतान द्वारा समर्थित होती हैं।',
          'SecureFAQ3': 'सिक्योरिटाइज्ड डेट इंस्ट्रूमेंट्स के क्या फायदे हैं?',
          'SecureFAQ4':
              'प्रतिभूतिकृत ऋण लिखत विविधीकरण, तरलता और संभावित रूप से उच्च प्रतिफल सहित कई लाभ प्रदान कर सकते हैं।',
          'SecureFAQ5': 'प्रतिभूतिकृत ऋण लिखतों के जोखिम क्या हैं?',
          'SecureFAQ6':
              'सुरक्षित ऋण लिखत जोखिम भरे हो सकते हैं, खासकर यदि अंतर्निहित ऋण लिखत निम्न गुणवत्ता वाले हों या यदि क्रेडिट रेटिंग सटीक न हों। इसके अलावा, प्रतिभूतिकरण जटिल और समझने में मुश्किल हो सकता है, जिससे प्रतिभूतियों का गलत मूल्य निर्धारण या ओवरवैल्यूएशन हो सकता है।',
          'SecureFAQ7': 'किस प्रकार के ऋण उपकरणों को सुरक्षित किया जा सकता है?',
          'SecureFAQ8':
              'लगभग किसी भी प्रकार के ऋण साधन को सुरक्षित किया जा सकता है, जिसमें बंधक, ऑटो ऋण, क्रेडिट कार्ड ऋण, छात्र ऋण और कॉर्पोरेट ऋण शामिल हैं। प्रतिभूतिकृत ऋण उपकरणों के सबसे सामान्य प्रकार बंधक-समर्थित प्रतिभूतियां (MBS) और परिसंपत्ति-समर्थित प्रतिभूतियां (ABS) हैं।',
          'SecureFAQ9':
              'प्रतिभूतिकृत ऋण बाजार को नियंत्रित करने वाले नियम क्या हैं?',
          'SecureFAQ10':
              'सेबी (सिक्योरिटाइज्ड डेट इंस्ट्रूमेंट्स एंड सिक्योरिटी रिसिप्ट्स का मुद्दा और लिस्टिंग) विनियम, 2008 में पेश किए गए, एसडीआई की स्थापना की।',
          'SecureFAQ11': 'क्या एनआरआई एसडीआई में निवेश कर सकता है?',
          'SecureFAQ12':
              'हाँ, अनिवासी भारतीयों को भारतीय रिज़र्व बैंक (RBI) और भारतीय प्रतिभूति और विनिमय बोर्ड (SEBI) द्वारा निर्धारित नियमों और विनियमों के अधीन, भारतीय संस्थाओं द्वारा जारी SDI में निवेश करने की अनुमति है।',
          'SecureFAQ13': 'क्या एसडीआई तरल निवेश हैं?',
          'SecureFAQ14':
              "एसडीआई की तरलता लेनदेन संरचना और बाजार स्थितियों के आधार पर भिन्न हो सकती है। निवेशकों को तरलता प्रदान करते हुए एसडीआई का द्वितीयक बाजारों में कारोबार किया जा सकता है, लेकिन निवेश करने से पहले तरलता की जरूरतों पर सावधानीपूर्वक विचार करने की सलाह दी जाती है।",
        },
      };
}
