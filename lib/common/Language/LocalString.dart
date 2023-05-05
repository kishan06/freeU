import 'package:get/get.dart';
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
          "What are AIFs?": "What are AIFs?",
          "AIFAns1":
              "Alternative Investment Fund (AIF) is a type of investment fund that is registered with the Securities and Exchange Board of India (SEBI). They are privately pooled investment vehicles generally set up by high-net-worth individuals, Indian or foreign, as per a defined investment policy. AIFs are distinctly different from traditional investment vehicles like mutual funds, or ETFs, and invest in non-traditional avenues such as venture capital, private equity, hedge funds, managed futures, etc, to make a profit, or benefit investors. AIFs provide an opportunity for investors to participate in alternative investments and diversify their portfolios, while also offering fund managers greater flexibility in their investment strategies.",
          "Who can invest in AIF?": "Who can invest in AIF?",
          "AIFAns2":
              "Any investor whether Indian, foreign, or non-resident Indian can invest in an AIF, as long as she/he has the required funds for investment, and is willing to take a risk on the unlisted and illiquid securities. To invest in an AIF investor must provide proof of income, PAN card, and ID proof",
          "What is the minimum amount needed to invest in AIF?":
              "What is the minimum amount needed to invest in AIF?",
          "AIFAns3":
              """All AIF categories in India except "angel fund" need a minimum investment of Rs. 1 crore, whereas, for the angel fund, that amount is Rs. 25 lakhs.  In the case of an employee or director of AIF, the minimum value of investment shall be Rs. 25 lakhs.""",
          "In Which Formats Can an AIF Be Set Up?":
              "In Which Formats Can an AIF Be Set Up?",
          "AIFAns4":
              "The AIF funds are set up in the form of a trust, limited liability partnership (LLP), or corporate body.",
          "Size of the AIF scheme": "Size of the AIF scheme",
          "AIFAns5":
              "Each AIF scheme should have a minimum corpus of Rs. 20 crores (Rs. 10 crores for angel funds). Along with that, there is also a cap on the number of investors each scheme can have. Most schemes cannot have more than 1000 investors, whereas angel funds can cater to a maximum of 200 investors.",
          "Alternative Investment Funds v/s Mutual Funds":
              "Alternative Investment Funds v/s Mutual Funds",
          "AIFAns6":
              '''Alternative Investment Funds offer a higher degree of flexibility than mutual funds as they invest in unlisted shares and also use shorting and leverage For HNIs who are looking to diversify their portfolios and increase long-term returns on their investments while willing to take a considerable risk, AIFs seem like decent investment alternatives. But for those who can take low to high risk, mutual funds are the way to go. The decision between alternative investment funds and mutual funds should be based on your investment objectives, available capital, and long-term intentions.''',
          "Difference between AIF and PMS": "Difference between AIF and PMS",
          "AIFAns7":
              "In Portfolio Management System (PMS), each investor portfolio is different, and it’s a customized offering. PMS cannot pool money from different investors to create an investment fund. PMS investors can also choose to exit their investments anytime they want. On the other hand, AIFs pool money from investors and have a lock-in period ranging from 3 to 5 years.",
          "View Categories": "View Categories",
          "Alternative Investment Funds(AIF)":
              "Alternative Investment Funds(AIF)",
          'What are the benefits of investing through an AIF?':
              'What are the benefits of investing through an AIF?',
          "> Regulations are in place:": "> Regulations are in place:",
          "AIFAns8":
              " AIF is \n   regulated under SEBI AIF \n   Regulations. As per SEBI, if \n   investors pool funds to invest \n   collectively, they can only do it \n   through AIF. They cannot invest \n   through LLP, Private Limited \n   Companies, etc.",
          "Higher Returns:": "> Higher Returns:",
          "AIFAns9":
              " AIFs give investors \n   exposure to alternate securities \n   and provide higher returns as \n   compared to traditional \n   investments. Therefore, by \n   investing in AIFs, investors improve \n   the overall performance of their \n   portfolios and help achieve long-\n   term capital appreciation.",
          "Low Volatility:": "> Low Volatility:",
          "AIFAns10":
              " AIF investments, \n   unlike traditional investments, are \n   not dependent on the ups and \n   downs of the market and hence \n   less volatile as compared to \n   traditional equity investments.",
          "> Diversification:": "> Diversification:",
          "AIFAns11":
              " AIF gives vast \n   scope for diversification due to its \n   flexibility. Fund managers have the \n   scope to adopt multiple \n   investment options and market \n   strategies. This, in turn, helps in \n   the diversification of a portfolio.",
          "> Better Negotiation with AIF:": "> Better Negotiation with AIF:",
          "AIFAns12":
              " AIF \n   deals with pooled funds that are \n   invested in good-sized amounts, \n   and hence provide better \n   negotiating powers to the \n   investors. In traditional \n   investments, investors only get \n   minimal ownership.",
          "> Professional Guidance:": "> Professional Guidance:",
          "AIFAns13": " Money is \n   managed by expert professionals",
          'Downsides of AIF Investment': 'Downsides of AIF Investment',
          "AIFAns14":
              "Although AIF is not correlated with conventional investments, these funds are also subject to higher volatility. Sometimes it does happen that if an AIF idea does not work in the market, the funds suffer heavy losses.",
          "AIFAns15":
              "The liquidity crisis is also another downside of AIF investments. Even after the lock-in is over, sometimes you cannot withdraw your investment completely. ",
          "AIFAns16":
              "Significant credit defaults on debt papers are also a possibility.",
          "AIFAns17":
              "The expense ratios are also very high in AIFs. High taxation rates, especially on the Category III AIFs may reduce the returns you receive from the fund.",
          "Alternative Investment Funds categories":
              "Alternative Investment Funds categories",
          "Alternative Investment Funds Category I":
              "Alternative Investment Funds Category I",
          "Alternative Investment Funds Category II":
              "Alternative Investment Funds Category II",
          "Alternative Investment Funds Category III":
              "Alternative Investment Funds Category III",
          'View Categories deals': 'View Categories deals',
          "AIFC1Ans1":
              "As per SEBI Regulations Category, I AIF are AIFs that invests in early-stage startups, social ventures, SMEs, infrastructure startups, or other sectors or areas which the government considers socially or economically desirable. It includes investments such as venture capital funds, SME Funds, social venture funds, infrastructure funds, etc. ",
          "AIFC2Ans1":
              "As per SEBI Regulations Category II AIF are AIFs which does not fall in Category I and III and which do not undertake leverage or borrowing other than to meet day-to-day operational requirements. The government or the regulator does not offer any concessions or incentives for these funds. Private equity funds or debt funds are examples of Category II AIFs. This category comprises 80% AIFs and is the most popular among AIFs.",
          "AIFC3Ans1":
              "As per SEBI Regulations Category III AIF are AIFs that employ diverse or complex trading strategies and may employ leverage including through investment in listed or unlisted derivatives. AIF such as hedge funds or funds that trade intending to make short-term returns or such other funds which are open-ended and for which no specific incentives or concessions are given by the government or any other Regulator shall be included. Therefore, funds under Category III are the most complex and use a diversified trading strategy to get high returns in a short time.",
          "FractionalTxt1":
              "Fractional Real Estate investing allows investors to buy fractions of a real estate property, and get returns on it like rent, capital appreciation, etc. The investors split the cost, and share any profit that comes from that asset without the hassle of paperwork, property maintenance, etc. ",
          "Learn more": "Learn more",
          "Expected Return (IRR)": "Expected Return (IRR)",
          "~ 11-13% p.a.": "~ 11-13% p.a.",
          "Suggested Investment Horizon": "Suggested Investment Horizon",
          "More than 4 Years": "More than 4 Years",
          "Minimum Investment": "Minimum Investment",
          "25,00,000": "25,00,000",
          "View more product": "View more product",
          "Peer to Peer Lending": "Peer to Peer Lending",
          "PeerDisc":
              "Peer to Peer lending connects the borrowers (investors) to the lenders directly, under a loan agreement, without having to go through any financial institutions like banks.",
          "Invoice Discounting": "Invoice Discounting",
          "InvoiceDisc":
              "Invoice Discounting is the financial practice of using a company's unpaid invoices to get a working cash flow and fulfill its immediate financial needs.",
          "~12-18% p.a.": "~12-18% p.a.",
          "~ 3-18 months": "~ 3-18 months",
          "1,00,000": "1,00,000",
          "Revenue-based Financing": "Revenue-based Financing",
          "RevenueDisc":
              "Revenue-based financing is an investment done to help small and rising startups grow their business with the invested capital, in return for a fixed percentage of their ongoing gross revenues, measured mainly as monthly revenues.",
          "~ 12%-16% p.a.": "~ 12%-16% p.a.",
          "~ 1-4 years": "~ 1-4 years",
          "5,00,000": "5,00,000",
          "Lease based Financing": "Lease based Financing",
          "LeaseDisc":
              "This is a kind of financing where the lender (lessor) gives another person, the lessee, the right to use an asset against periodical payments.",
          "Investment Horizon:": "Investment Horizon:",
          "~ 12-36 months": "~ 12-36 months",
          "Clean and Green Assets": "Clean and Green Assets",
          "CleanDisc":
              "Clean and Green Asset investing is the method of investing in environmentally conscious, sustainable, and socially conscious companies.",
          "~ 9%-12% p.a.": "~ 9%-12% p.a.",
          "~ 6-36 months": "~ 6-36 months",
          "50,000": "50,000",
          "Securitized Debt Instruments": "Securitized Debt Instruments",
          "SecureDisc":
              "Securitization involves the creation of a pool of assets from illiquid financial assets which are repackaged or bundled into marketable securities. Securitized Debt Instruments are financial securities such as bonds/certificates that are created by securitizing individual loans (debt).",
          "More than 3 Years": "More than 3 Years",
          "High Yield Fixed Income": "High Yield Fixed Income",
          "HighDisc":
              "High-yield bonds or junk bonds are bonds that pay higher rates of interest, because of their low credit rates, compared to investment-grade bonds. Due to their higher chances to default, they pay a higher yield to compensate investors - hence called High yield Bonds.",
          "~ 1-5 years": "~ 1-5 years",
          "Venture Debt": "Venture Debt",
          "VentureDisc":
              "Venture Debt is a debt provided to venture capital-backed companies to raise working capital, to fulfill their financial shortfalls.",
          "One-Touch": "One-Touch",
          "Use your fingerprint to easily log in!":
              "Use your fingerprint to easily log in!",
          "Touch the fingerprint sensor": "Touch the fingerprint sensor",
          "Login with Pin": "Login with Pin",
          "4 Digit Pin": "4 Digit Pin",
          "Use your 4 Digit Pin to easily log in!":
              "Use your 4 Digit Pin to easily log in!",
          'Enter PIN': 'Enter PIN',
          'Pin is Empty': 'Pin is Empty',
          "Forgot PIN?": "Forgot PIN?",
          "Press back again to exit": "Press back again to exit",
          "Skip": "Skip",
          "Welcome to FreeU": "Welcome to FreeU",
          "Sign in to continue.": "Sign in to continue.",
          "Email / Phone": "Email / Phone",
          "Enter Email or Phone Number": "Enter Email or Phone Number",
          "Please Enter Email or Phone Number":
              "Please Enter Email or Phone Number",
          'Login Using OTP': 'Login Using OTP',
          "Password": "Password",
          "Please Enter Password": "Please Enter Password",
          "Enter Password": "Enter Password",
          'Forgot Password?': 'Forgot Password?',
          'Sign In': 'Sign In',
          "Don't have an account?": "Don't have an account?",
          'Create account': 'Create account',
          "Login with OTP": "Login with OTP",
          "Please enter your mobile number": "Please enter your mobile number",
          "Please Enter Mobile Number": "Please Enter Mobile Number",
          "Please Enter Correct Mobile Number":
              "Please Enter Correct Mobile Number",
          "OTP sent to": "OTP sent to",
          "Enter OTP": "Enter OTP",
          "Please Enter verification code": "Please Enter verification code",
          "OTP length should be atleast 4": "OTP length should be atleast 4",
          "Didn't you receive any code ?": "Didn't you receive any code ?",
          'Resend': 'Resend',
          "Verify": "Verify",
          'Would you like a guided tour of our app?':
              'Would you like a guided tour of our app?',
          "Don't show this message again": "Don't show this message again",
          "No": "No",
          "Yes": "Yes",
          "Complete Your Profile": "Complete Your Profile",
          "Enter your full name": "Enter your full name",
          "Full Name*": "Full Name*",
          "Full Name": "Full Name",
          "Enter your email address": "Enter your email address",
          "Email Id*": "Email Id*",
          "Email Id": "Email Id",
          'Enter your Email address': 'Enter your Email address',
          'Enter a Valid Email address': 'Enter a Valid Email address',
          "Enter your phone number": "Enter your phone number",
          "Phone Number*": "Phone Number*",
          "Please Enter Phone Number": "Please Enter Phone Number",
          "Enter your date of birth": "Enter your date of birth",
          "Enter your occupation": "Enter your occupation",
          "Occupation*": "Occupation*",
          "Please Enter Occupation": "Please Enter Occupation",
          "Enter your address": "Enter your address",
          "Please Enter Address": "Please Enter Address",
          "Please Enter Aadhar Number": "Please Enter Aadhar Number",
          "Enter Aadhar Number": "Enter Aadhar Number",
          "Enter PAN Number": "Enter PAN Number",
          "Please Enter PAN Number": "Please Enter PAN Number",
          "Forgot Password": "Forgot Password",
          "forgotPwdtxt1":
              "We will send a verification email to the email address on your account in order to reset your password",
          "Phone number": "Phone number",
          "Please Enter a Phone Number": "Please Enter a Phone Number",
          "Please Enter a Valid Phone Number":
              "Please Enter a Valid Phone Number",
          'OTP Sent to registered mobile number':
              'OTP Sent to registered mobile number',
          "Proceed": "Proceed",
          "Enter number": "Enter number",
          "Reset Password": "Reset Password",
          "New Password": "New Password",
          'Enter your password': 'Enter your password',
          'Password is Empty': 'Password is Empty',
          'Enter valid password': 'Enter valid password',
          'Has at least 8 characters': 'Has at least 8 characters',
          'Has at least 1 uppercase letter and symbol':
              'Has at least 1 uppercase letter and symbol',
          'Has a number': 'Has a number',
          "Confirm Password": "Confirm Password",
          'Password Not Matched': 'Password Not Matched',
          "Terms And Conditions": "Terms And Conditions",
          'I accept Terms & Conditions': 'I accept Terms & Conditions',
          "Sign up": "Sign up",
          'Enter your name': 'Enter your name',
          'Mobile number is required': 'Mobile number is required',
          'Enter valid mobile number': 'Enter valid mobile number',
          "Phone Number": "Phone Number",
          "I accept the ": "I accept the ",
          "Terms & Conditions*": "Terms & Conditions*",
          'add your finger print to login': 'add your finger print to login',
          "Set-up Touch Id": "Set-up Touch Id",
          "Set up Now!": "Set up Now!",
          'will do it later': 'will do it later',
          "Security questions": "Security questions",
          "In what city were you born?": "In what city were you born?",
          "Answer": "Answer",
          "Please Enter Answer": "Please Enter Answer",
          "What is the name of your favorite pet?":
              "What is the name of your favorite pet?",
          "What is your mother's maiden name?":
              "What is your mother's maiden name?",
          "What high school did you attend?":
              "What high school did you attend?",
          "Let's set your 4 Digit Pin": "Let's set your 4 Digit Pin",
          "Please Enter 4 Digit PIN": "Please Enter 4 Digit PIN",
          "PIN length should be atleast 4": "PIN length should be atleast 4",
          "Choose a PIN of Your choice": "Choose a PIN of Your choice",
          'PIN is Empty': 'PIN is Empty',
          "Please Re-Enter the PIN": "Please Re-Enter the PIN",
          "security-first": "security-first",
          "Security First": "Security First",
          "Select to login Method": "Select to login Method",
          "4 Digit PIN": "4 Digit PIN",
          "Touch Id": "Touch Id",
          "What are Alternative Assets?": "What are Alternative Assets?",
          'splashTxt1':
              "As the name suggests, Alternative investments are financial investments that cannot be categorized as a traditional, or conventional investment.",
          "Difference between Alternative & Traditional Investments":
              "Difference between Alternative & Traditional Investments",
          'splashTxt2':
              "Traditional investments are investments that can be bought, sold, and traded on a public market",
          'vs': 'vs',
          'splashTxt3':
              "Alternative investments, on the other hand, are not publicly traded.",
          "01. Venture Capital Fund": "01. Venture Capital Fund",
          'ventureDes':
              """VCF is an AIF which invests primarily in unlisted securities of start-ups, emerging or early-stage venture capital undertakings mainly involved in new products, new services, technology or intellectual property right based activities or a new business model and shall include an angel fund.
          Venture Capital Funds or VCFs make investments in start-ups that have lucrative growth potential, but lack funds to set up in the initial phase or during expansion. These startups face a lot of difficulty in securing funds through traditional capital markets. Therefore, VCFs provide a wholesome solution to their financial difficulties. Venture capital fund provides early-stage financing along with additional skills and resources to a startup during the pre-start stage. It provides overall resources to a startup so that it can develop the technological innovation from scratch.
          VCFs are regulated by the SEBI. There is a high-risk involved in funding new projects, or startups. But with VCFs, investors are usually willing to take the risk, because the high-growth potential of these projects usually results in high returns on investments.""",
          "More than 7 Years": "More than 7 Years",
          "02. Infrastructure Fund": "02. Infrastructure Fund",
          "InfrastrutureDes":
              "As per SEBI Regulations, “Infrastructure fund” means an AIF which invests primarily in unlisted securities or partnership interest or listed debt or securitized debt instruments of investee companies or special purpose vehicles engaged in or formed for the purpose of operating, developing, or holding infrastructure projects;"
                  'Infrastructure fund, a category 1 Alternative Investment Fund (AIF), raises capital by pooling investments from private players and primarily invest in companies that develop infrastructure projects. Infrastructure funds invest in the development of public infrastructure like roads, airport, renewable energy, water, railways, transmissions, and municipal solid waste. The Indian Government has incentives and concessions in order to encourage infrastructure funds, since they help positively impact the Indian economy. ',
          "More than 6 Years": "More than 6 Years",
          "03. Angel Fund": "03. Angel Fund",
          'AngelDes':
              "Angel funds are a type of venture capital fund that focuses on providing the much-needed capital to high-growth potential startups during their early development stages, when traditional sources of financing may not be available. Angel funds play an important role in strengthening the startup ecosystem by supporting them and helping them to develop into successful businesses."
                  '\n\nAn ‘Angel Investor’ is usually a high-net worth individual who provides funds for start-ups or entrepreneurs in exchange for ownership equity in the company. It can either be a one-time investment, or consistent financial support through the struggling years of the start-up. For many small companies, without financial backing, angel investing is the only primary source of investment that works. In addition to providing funding, angel funds also offer startups valuable resources such as management mentoring, guidance, and industry contacts that can help them grow and succeed.',
          "Angel Fund": "Angel Fund",
          "Open": "Open",
          "Fully funded": "Fully funded",
          "Resale": "Resale",
          "No Data Found": "No Data Found",
          "Piper Serica Angel Fund": "Piper Serica Angel Fund",
          "Targeted IRR :": "Targeted IRR :",
          "Commitment period :": "Commitment period :",
          "10 Years": "10 Years",
          "Capital Commitment :": "Capital Commitment :",
          "25 Lakh": "25 Lakh",
          'View Details': 'View Details',
          'Registration No.': 'Registration No.',
          'Fund Category (I/II/III)': 'Fund Category (I/II/III)',
          'Fund Structure (Open/Closed)': 'Fund Structure (Open/Closed)',
          'Fund Strategy': 'Fund Strategy',
          'Fund Domicile': 'Fund Domicile',
          'Fund Manager Name': 'Fund Manager Name',
          'Website of the fund': 'Website of the fund',
          'Fund Manager Experience': 'Fund Manager Experience',
          'Sponsor': 'Sponsor',
          'Manager': 'Manager',
          'Trustee': 'Trustee',
          'Auditor': 'Auditor',
          'Valuer / Tax Advisor': 'Valuer / Tax Advisor',
          'Credit Rating (if any)': 'Credit Rating (if any)',
          'Open Date': 'Open Date',
          '1st Close Date': '1st Close Date',
          'Final Close Date': 'Final Close Date',
          'Tenure from Final Close': 'Tenure from Final Close',
          'Commitment Period': 'Commitment Period',
          'Native Currency': 'Native Currency',
          'Target Corpus': 'Target Corpus',
          'Investment Manager Contribution': 'Investment Manager Contribution',
          'Minimum Capital Commitment': 'Minimum Capital Commitment',
          'Initial Drawdown': 'Initial Drawdown',
          'Accepting Overseas investment?': 'Accepting Overseas investment?',
          'Target IRR (%)': 'Target IRR (%)',
          '"Management Fees and Carry  - Set Up Fee  - Management Fee  - Performance Fee"':
              '"Management Fees and Carry  - Set Up Fee  - Management Fee  - Performance Fee"',
          'Hurdle Rate': 'Hurdle Rate',
          'Other Expenses': 'Other Expenses',
          'Focused Sectors (Industries in which they are investing)':
              'Focused Sectors (Industries in which they are investing)',
          "Regions Covered (Geographical Locations covered by the fund)":
              "Regions Covered (Geographical Locations covered by the fund)",
          'Closed': 'Closed',
          '"1. Invest only in start ups that have exponential growth business model 2.Business should not require constant infusion of capital to support growth 3.Tech has to be the core driver of business. Invest in bits and not atoms 4. Invest in founders first. Business models pivot  5. Invest along with other active investors who actively provide mentorship and guidance to young founders  6. Stay invested for as long as possible in successful start ups. Water the roses and cut the weeds 7.Reduce the impact of high mortality by building a portfolio of 30 to 40 companies"':
              '"1. Invest only in start ups that have exponential growth business model 2.Business should not require constant infusion of capital to support growth 3.Tech has to be the core driver of business. Invest in bits and not atoms 4. Invest in founders first. Business models pivot  5. Invest along with other active investors who actively provide mentorship and guidance to young founders  6. Stay invested for as long as possible in successful start ups. Water the roses and cut the weeds 7.Reduce the impact of high mortality by building a portfolio of 30 to 40 companies"',
          'India': 'India',
          'Piper Serica': 'Piper Serica',
          'Piper Serica Advisors': 'Piper Serica Advisors',
          'Rupees': 'Rupees',
          'Minimum 2.5% or INR 50 lakhs whichever is lower':
              'Minimum 2.5% or INR 50 lakhs whichever is lower',
          '"Minimum commitment of Rs. 25 lakh to be invested over 3 years."':
              '"Minimum commitment of Rs. 25 lakh to be invested over 3 years."',
          '"Management Fee - 2% upto 1 Cr of aggregate capital commitment, otherwise 1.5% Performance Fee - 20% for Unit A & B holders (plus taxes & levies as applicable)"':
              '"Management Fee - 2% upto 1 Cr of aggregate capital commitment, otherwise 1.5% Performance Fee - 20% for Unit A & B holders (plus taxes & levies as applicable)"',
          'Tech based Start-Up': 'Tech based Start-Up',
          'Invest now': 'Invest now',
          "Thank You For Showing Your Interest":
              "Thank You For Showing Your Interest",
          "A FreeU Advisory Team will get back to you soon.":
              "A FreeU Advisory Team will get back to you soon.",
          'View more products': 'View more products',
          "Infrastructure Fund": "Infrastructure Fund",
          'Benefits of investing in Infrastructure Fund':
              'Benefits of investing in Infrastructure Fund',
          "Infrastructure Funds provide investors with steady and consistent returns, mainly because demand for infrastructural services remain constant, or are constantly on the rise, even when the country’s economic growth is slow. Compared with other investments, these funds potentially offer more security against volatile stocks, and hence better at risk-management.":
              "Infrastructure Funds provide investors with steady and consistent returns, mainly because demand for infrastructural services remain constant, or are constantly on the rise, even when the country’s economic growth is slow. Compared with other investments, these funds potentially offer more security against volatile stocks, and hence better at risk-management.",
          'Features of Infrastructure AIF': 'Features of Infrastructure AIF',
          'infraTxt1': '>	A high risk-high return investment'
              '\n\n>	Low liquidity'
              '\n\n>	Long investment horizon'
              '\n\n>	A chance to invest in high-potential sector '
              '\n\n>	They can be listed on stock exchanges because  of their minimum trade amount of 1 crore.'
              '\n\n>	AIF cannot invest more than 25% in a single infrastructure company.'
              '\n\n>	At least 75% of the investible funds shall be invested in unlisted equity shares or equity instruments of a venture capital undertaking or in companies listed or proposed to be listed on a SME exchange or SME segment of an exchange.'
              '\n\n>	The unit holder can invest in other subcategories of Category I AIF, but cannot invest in FoFs (Funds of Funds).'
              '\n\n>	Infrastructure bonds are refrained from borrowing funds directly or indirectly to run their business operations.'
              '\n\n>	Infrastructure fund allows only 1,000 investors per scheme.',
          'Tenure: ': 'Tenure: ',
          "infrraTxt2":
              "Since infrastructure funds come under category 1, these are close-ended and come with a minimum tenure of more than three years, which could be extended by additional two years. Liquidate within one year following expiry of fund tenure",
          "Venture Capital Fund (VCF)": "Venture Capital Fund (VCF)",
          'So how does a VCF work?': 'So how does a VCF work?',
          "VentureTxt1":
              "VCF pool in funds from the prospective investors wanting to make equity investments in different/ multiple ventures, depending on their business plans, profiles, and development phases. Once the investors commit, the VCF finalizes the investment amounts of each potential investor to collect the capital. Then the fund manager (VCF) sought out private equity investments with a high growth potential that have the best chances of giving investors a return. "
                  '\n\nThe VCFs are mostly done in the early stages, and each investor gets their share/ return on investment profit proportional to their investment amount.'
                  '\n\nVenture Capital Funds are growing in India, especially because of HNIs, who have a lot of capital and seek high-risk return investment options. Since their inclusion under AIF, these funding has seen a lot of NRIs investing in startups in India, helping the economy grow.',
          'Types of VC Funds': 'Types of VC Funds',
          'VentureTxt2': "Based on the fund utilization in different phases of a business, Venture Capital Funds are classified into three broad categories. Early-stage financing, Expansion financing, and Acquisition/Buyout financing."
              '\n\n>	Early-stage Financing: There are 3 sub-categories in early-stage financing. These are seed financing, startup financing, and first stage financing.'
              '\nSeed financing is a small sum given to the entrepreneur to serve the purpose of qualifying for a startup loan. When early-stage companies receive funds to complete their services and product developments, it is called Start-Up financing.  Lastly, First-stage financing occurs when companies use the venture capital to commence full-fledged business activities.'
              '\n\n>	Expansion financing: Expansion financing is classified into second stage financing, bridge financing, and third stage financing. Second-stage and third-stage financing is a kind of expansion financing, typically provided to companies so that they can companies scale up their business and operations. Bridge financing, on the other hand, is a kind of financing that is typically provided to companies whose business strategy includes the plan to go public through an IPO.'
              '\n\n>	Acquisition or buyout financing: Acquisition or buyout financing is a type of financing that is used to fund acquisitions or leveraged buyouts. In an acquisition, one company purchases another company or part of another company. In a leveraged buyout, a management group of one company wants to acquire a product of another company.',
          'Benefits of Venture Capital Fund':
              'Benefits of Venture Capital Fund',
          'VentureTxt3': '>	VCF ensure that the venture capital (money provided in the VCF) is used only for projects, startups with a potential for high growth. Hence, in spite of a high-risk, they have the potential of giving extremely high returns on investments.'
              '\n\n>	For any company in early stages of growth, networking is significant, and that is the biggest advantage the VCF investors bring. Influential, rich, investors with a lot of connect promote these startups, increasing their visibility, exposure, through positive marketing, helping them grow.'
              '\n\n>	The investors in the VCF, often bring to the table knowledge and experience, that help the companies, or startups grow as per their vision and goal. These sophisticated investors of VCF, can also sometimes contribute to the growth of the company by helping in developing new products, services, and even help them to acquire the latest, advanced technologies to increase efficiency.'
              '\n\n>	VCFs have a lot of hold on the companies they invest in, and hence can influence the decisions.'
              '\n\n>	The VCFs also have the ability to invest in multiple projects at the same time. This can mitigate the high-risk that is usually involved in investing in this category. Out of many startups, at least one can grow massively, giving them high returns to cover their entire investment.',
          'Disadvantages of Venture Capital Fund':
              'Disadvantages of Venture Capital Fund',
          'VentureTxt4':
              "The process is lengthy, and complex, and contains a high risk. Investments are for a long term which means profits made are realized in the very long run.",
          'As a potential investor, what should you be looking at in order to invest in a VCF?':
              'As a potential investor, what should you be looking at in order to invest in a VCF?',
          "VentureTxt5":
              '>	It is always a good idea to look for potential startups having a very strong management team, with inimitable/unique ideas or products and a good potential market for it. '
                  '\n\n>	Investment structure and strategy of the fund'
                  '\n\n>	Industries in which it is investing. It is also a smart idea to invest in industries you are familiar in, thus can advise, nurture, in order to ensure growth, and get high returns on investments.'
                  '\n\n>	Startups that the VCF has funded '
                  '\n\n>	Minimum Lock in period',
          'How Does a VC Differ from an Angel Investor?':
              'How Does a VC Differ from an Angel Investor?',
          'AngelTxt1':
              "While both provide money to startup companies, venture capitalists are typically professional investors who invest in a broad portfolio of new companies and provide hands-on guidance and leverage their professional networks to help the new firm. Angel investors, on the other hand, tend to be wealthy individuals who like to invest in new companies more as a hobby or side-project and may not provide the same expert guidance. Angel investors also usually invest first and are then followed by venture capitalists. Venture capital funds are focused on investing in later stages of business, angel investor provides the much-needed support in the initial stages of the business.",
          'Who can qualify as an angel investor?':
              'Who can qualify as an angel investor?',
          'AngelTxt2':
              "As per SEBI regulations, Angel investor can be anyone who wants to invest in an angel fund and fulfils one of the following conditions",
          'AngelTxt3':
              "	an individual investor who has net tangible assets of at least two crore rupees excluding value of his principal residence, and who: ",
          'AngelTxt4':
              "	has early stage investment experience (i.e., prior experience in investing in start-up or emerging or early-stage ventures), or ",
          'AngelTxt5':
              "	has experience as a serial entrepreneur (i.e., a person who has promoted or co-promoted more than one start-up venture), or",
          'AngelTxt6':
              "	is a senior management professional with at least ten years of experience;",
          'AngelTxt7':
              "	Is a corporate body with a net worth of at least ten crore rupees",
          'AngelTxt8':
              "AIF registered under these regulations or a VCF registered under the SEBI (Venture Capital Funds) Regulations, 1996. ",
          'How much money do you need to be an angel fund investor in India?':
              'How much money do you need to be an angel fund investor in India?',
          'AngelTxt9':
              "An Angel Investor need to invest a minimum of 25 lakhs INR over five years in the startups he/she likes, through the Angel Fund.",
          'Benefits of Angel Investing': 'Benefits of Angel Investing',
          'AngelTxt10': "-	Business Agreements are more flexible. "
              "\n\n-	Due Diligence processes less complex than traditional investments"
              "\n\n-	Angel investors can become valuable advisor and counsel for the start up.",
          'AngelTxt11': 'How is an Angel Fund different from other AIFs?',
          'AngelTxt12': "Following are the points of difference between the two categories:"
              "\n\n1.	Corpus: Angel funds shall have a corpus of at least 5 Crore. Other AIF require to have a corpus of 20 crores."
              "\n\n2.	Minimum investment limit for a single investor is set at Rs. 25 lakhs for Angel Funds unlike other AIF where the limit is set at Rs. 1 Crore Rupees"
              "\n\n3.	The Sponsor/ Manager is required to have a continuing interest in the Angel Funds will be lower of the two; 2.5% of corpus or Rs. 50 lakhs. However, in case of other AIF, this requirement is way higher.",
          'Key Features': 'Key Features',
          'AngelTxt14': "Under AIF Regulations Angel Funds can be set up and they will have following key features:"
              "\n\n1.	Such funds can accept investment from maximum 200 investors, earlier it was limited to 49 investors."
              "\n\n2.	Investment by an angel fund in the venture capital undertaking shall not be less than Rs. 25 lakhs and shall not exceed Rs. 10 crore."
              "\n\n3.	The Lock in period required for Angel investor is reduced from 3 years to one year."
              "\n\n4.	AIF are allowed to make investments in organizations incorporated in previous 5 years. Previously, this incorporation limit was set at 3 years."
              "\n\n5.	As per markets regulator Sebi, each scheme of an angel fund is an independent investment vehicle with its own set of investors. Investors in angel fund have the option to selectively participate in investment schemes as each investment being a separate one. In addition, investors will be considered investors of only those specific schemes for which they have given approval."
              "\n\n6.	Angel funds shall not invest more than 25% of their total investments under all its scheme in one venture capital undertaking."
              '\n\n7.	An angel fund can invest in the securities of companies incorporated outside India subject to such conditions or guidelines that may be stipulated or issued by the Reserve Bank of India and the Board.',
          "HDFC AMC Select AIF FOF – I": "HDFC AMC Select AIF FOF – I",
          "Edelweiss Discovery Fund": "Edelweiss Discovery Fund",
          "Private Equity Fund Deals": "Private Equity Fund Deals",
          "5 Years": "5 Years",
          "Invest in ~ 15 VC/PE funds.Up to 50% in venture capital funds and balance in private equity funds \nMaximum exposure to co-investment opportunities will be capped at 30% of the corpus":
              "Invest in ~ 15 VC/PE funds.Up to 50% in venture capital funds and balance in private equity funds \nMaximum exposure to co-investment opportunities will be capped at 30% of the corpus",
          "HDFC AMC": "HDFC AMC",
          "11 + 1 + 1 years": "11 + 1 + 1 years",
          "₹ 1,500 crore + green shoe of up to ₹ 1,500 crore":
              "₹ 1,500 crore + green shoe of up to ₹ 1,500 crore",
          "10% of Capital Commitment raised":
              "10% of Capital Commitment raised",
          "1 Crore": "1 Crore",
          "2.5% p.a. Management Fee & 20% Carry with full catchup":
              "2.5% p.a. Management Fee & 20% Carry with full catchup",
          "XIRR of 10% (pre-tax) on Capital Contributions received":
              "XIRR of 10% (pre-tax) on Capital Contributions received",
          "Invest in mid-stage businesses that are leaders of emerging sectors":
              "Invest in mid-stage businesses that are leaders of emerging sectors",
          "Ashish Agarwal": "Ashish Agarwal",
          "Fund Manager has 16 years experience in mid stage PE.":
              "Fund Manager has 16 years experience in mid stage PE.",
          "Edelweiss Asset Management Limited":
              "Edelweiss Asset Management Limited",
          "Sept-2022": "Sept-2022",
          "24 months from the initial close":
              "24 months from the initial close",
          "30M from Initial Closing": "30M from Initial Closing",
          "2.5% of the Fund size or INR 5 crores, whichever is lower":
              "2.5% of the Fund size or INR 5 crores, whichever is lower",
          "Entry Fee - Up to 2% of commitment amount \nManagement Fee - Class A1 INR 1 crore and INR 5 crore commitment, Class A2 => INR 5 crore commitment and < INR 10 crore commitment, Class A3 => INR 10 Crore \nPerformance Fee 20% over a hurdle rate of 10%":
              "Entry Fee - Up to 2% of commitment amount \nManagement Fee - Class A1 INR 1 crore and INR 5 crore commitment, Class A2 => INR 5 crore commitment and < INR 10 crore commitment, Class A3 => INR 10 Crore \nPerformance Fee 20% over a hurdle rate of 10%",
          "Consumer brands and Tech-enabled B2B services":
              "Consumer brands and Tech-enabled B2B services",
          "Know. Learn. Invest.": "Know. Learn. Invest.",
          "Create your customized investment world.":
              "Create your customized investment world.",
          "Investing simplified. One platform to choose from":
              "Investing simplified. One platform to choose from",
          "One platform, multiple options. Simplified for you.":
              "One platform, multiple options. Simplified for you.",
          "Easy to use online platform for Alternative investments":
              "Easy to use online platform for Alternative investments",
          'Meet Our Founder': 'Meet Our Founder',
          "FounderDesc":
              'He has 18+ years of experience in banking and financial markets. Before starting his entrepreneurial journey, he had worked in the corporate world with HSBC Bank, Kotak Securities, Religare Macquarie Private Wealth and others. He has done MBA and CFP and has deep experience in the financial industry.',
          'What is the taxation on the secondary sale of AIF units by investors?':
              'What is the taxation on the secondary sale of AIF units by investors?',
          'AlternativeFAQ15':
              'When an investor exits an AIF by a transfer of units or partnership interests to another investor (this transaction is called a ‘secondary transfer’), gains on the sale of units may be taxable directly in the hands of the investors. The taxability of gains on the sale of AIF units during a secondary transfer will depend on the holding period of the units. If the holding period is more than 36 months, the sale would be categorized as a long-term capital gain and taxed at 20% with indexation. If the holding period is less than 36 months, it would be considered a short-term capital gain and taxed at the applicable slab rates.',
          'Revenue Based Financing FAQ': 'Revenue Based Financing FAQ',
          'How does revenue-based financing work?':
              'How does revenue-based financing work?',
          'In a revenue-based financing arrangement, the investor provides funding to the company in exchange for a percentage of its revenue. The percentage is usually in the range of 1% to 10%, depending on the size of the investment and the risk level of the company. The company then makes regular payments to the investor based on its revenue until the predetermined amount has been paid back, plus a return on the investment.':
              'In a revenue-based financing arrangement, the investor provides funding to the company in exchange for a percentage of its revenue. The percentage is usually in the range of 1% to 10%, depending on the size of the investment and the risk level of the company. The company then makes regular payments to the investor based on its revenue until the predetermined amount has been paid back, plus a return on the investment.',
          'How does revenue-based financing differ from traditional financing?':
              'How does revenue-based financing differ from traditional financing?',
          'Revenue-based financing differs from traditional financing in that it is based on a percentage of future revenue rather than taking on debt or giving up equity. It also offers more flexible repayment terms and can be a better fit for companies with limited assets or a non-traditional business model.':
              'Revenue-based financing differs from traditional financing in that it is based on a percentage of future revenue rather than taking on debt or giving up equity. It also offers more flexible repayment terms and can be a better fit for companies with limited assets or a non-traditional business model.',
          'How can NRIs invest?': 'How can NRIs invest?',
          'Non-Resident investors can invest through an NRO or NRE Account, although the returns and sale proceeds will be credited to their NRO account.':
              'Non-Resident investors can invest through an NRO or NRE Account, although the returns and sale proceeds will be credited to their NRO account.',
          'What are the risks of RBF for investors?':
              'What are the risks of RBF for investors?',
          "As with any investment, there are risks associated with RBF. These include the possibility of the company not generating enough revenue to repay the investment and the potential for changes in the market or industry that could negatively impact the company&#39;s revenue. Additionally, there may be challenges in accurately tracking and verifying the company's revenue.":
              "As with any investment, there are risks associated with RBF. These include the possibility of the company not generating enough revenue to repay the investment and the potential for changes in the market or industry that could negatively impact the company&#39;s revenue. Additionally, there may be challenges in accurately tracking and verifying the company's revenue.",
          'What happens if a company fails to repay an RBF investment?':
              'What happens if a company fails to repay an RBF investment?',
          "If a company fails to repay an RBF investment, the investor may have the right to take legal action to ecover the outstanding amount. However, the investor's ability to recover the investment may depend on the terms of the agreement and the assets that the company has available to repay the investment.":
              "If a company fails to repay an RBF investment, the investor may have the right to take legal action to ecover the outstanding amount. However, the investor's ability to recover the investment may depend on the terms of the agreement and the assets that the company has available to repay the investment.",
          'Who invests in revenue-based financing?':
              'Who invests in revenue-based financing?',
          'Revenue-based financing can be provided by angel investors, venture capital firms, and other financial institutions. Any Indian citizen, HUF, Company, and NRI can invest in an RBF opportunity.':
              'Revenue-based financing can be provided by angel investors, venture capital firms, and other financial institutions. Any Indian citizen, HUF, Company, and NRI can invest in an RBF opportunity.',
          'What will be the tax implications?':
              'What will be the tax implications?',
          'The interest earned on revenue-based financing investments is taxable under the head “Income from Other Sources&quot;. The applicable tax rate depends on the investor&#39;s income tax slab. TDS of 10% is applicable on the interest component of payouts.':
              'The interest earned on revenue-based financing investments is taxable under the head “Income from Other Sources&quot;. The applicable tax rate depends on the investor&#39;s income tax slab. TDS of 10% is applicable on the interest component of payouts.',
          'High Yield Finance FAQ': 'High Yield Finance FAQ',
          'How does high yield fixed income differ from investment-grade fixed income?':
              'How does high yield fixed income differ from investment-grade fixed income?',
          'High yield fixed income is issued by riskier companies with lower credit ratings, while investment- grade fixed income is issued by more creditworthy companies. High yield fixed income provides higher yields but also higher risk.':
              'High yield fixed income is issued by riskier companies with lower credit ratings, while investment- grade fixed income is issued by more creditworthy companies. High yield fixed income provides higher yields but also higher risk.',
          'What types of securities are considered high yield fixed income?':
              'What types of securities are considered high yield fixed income?',
          'High yield fixed income securities include corporate bonds, municipal bonds, and asset-backed securities, among others. In the majority of cases the underlying instrument is a Non-Convertible Debenture (NCD)':
              'High yield fixed income securities include corporate bonds, municipal bonds, and asset-backed securities, among others. In the majority of cases the underlying instrument is a Non-Convertible Debenture (NCD)',
          'Is it possible for the investor to exit their investment before the maturity date?':
              'Is it possible for the investor to exit their investment before the maturity date?',
          'The investment is in the form of NCD, which can be transferred to another person provided one is able to find the buyer.':
              'The investment is in the form of NCD, which can be transferred to another person provided one is able to find the buyer.',
          'Who can invest in high yielding NCDs?':
              'Who can invest in high yielding NCDs?',
          'Resident investors and unincorporated bodies are eligible to invest in NCDs, while NRIs may invest in NCDs if the rules of the issuing company permit them to do so. It is rare for companies in India to allow NRIs to invest in a public issue NCD.':
              'Resident investors and unincorporated bodies are eligible to invest in NCDs, while NRIs may invest in NCDs if the rules of the issuing company permit them to do so. It is rare for companies in India to allow NRIs to invest in a public issue NCD.',
          'How will the investor receive repayments?':
              'How will the investor receive repayments?',
          'Repayment to the investor will be made directly to the bank account linked to their demat account.':
              'Repayment to the investor will be made directly to the bank account linked to their demat account.',
          'What is the course of action in case of default in NCD investments?':
              'What is the course of action in case of default in NCD investments?',
          'In such a scenario, the debenture trustee, who acts in the best interest of the debenture holders (investors), will take necessary measures to ensure that the issuer (borrower) rectifies the default and/or enforces security to recover the invested amount.':
              'In such a scenario, the debenture trustee, who acts in the best interest of the debenture holders (investors), will take necessary measures to ensure that the issuer (borrower) rectifies the default and/or enforces security to recover the invested amount.',
          'Does the borrower deduct TDS on a payout in NCD investments, and what is the applicable rate?':
              'Does the borrower deduct TDS on a payout in NCD investments, and what is the applicable rate?',
          "Yes, TDS is applicable on the interest component of the payout, and the borrower deducts 10% TDS at the source. The deducted TDS amount will be automatically reflected in the investor's form 26AS.":
              "Yes, TDS is applicable on the interest component of the payout, and the borrower deducts 10% TDS at the source. The deducted TDS amount will be automatically reflected in the investor's form 26AS.",
          'Asset backed leasing FAQ': 'Asset backed leasing FAQ',
          'How does lease-based financing work?':
              'How does lease-based financing work?',
          'In a lease-based financing arrangement, the leasing company purchases the asset and leases it to the company in exchange for regular lease payments. The lease payments typically include a finance charge that covers the cost of the asset plus interest, and the lease term is usually shorter than the expected useful life of the asset.':
              'In a lease-based financing arrangement, the leasing company purchases the asset and leases it to the company in exchange for regular lease payments. The lease payments typically include a finance charge that covers the cost of the asset plus interest, and the lease term is usually shorter than the expected useful life of the asset.',
          'How does lease-based financing differ from traditional financing?':
              'How does lease-based financing differ from traditional financing?',
          'Lease-based financing is distinct from traditional financing as the company leases the asset instead of owning it. It requires less upfront capital and provides greater equipment flexibility. However, it can be more expensive overall due to finance charges and interest payments.':
              'Lease-based financing is distinct from traditional financing as the company leases the asset instead of owning it. It requires less upfront capital and provides greater equipment flexibility. However, it can be more expensive overall due to finance charges and interest payments.',
          'Who provides lease-based financing?':
              'Who provides lease-based financing?',
          'Lease-based financing can be provided by banks, leasing companies, and other financial institutions.':
              'Lease-based financing can be provided by banks, leasing companies, and other financial institutions.',
          'What types of assets can be leased through lease-based financing?':
              'What types of assets can be leased through lease-based financing?',
          'Almost any type of asset can be leased through lease-based financing, including equipment, machinery, vehicles, and real estate.':
              'Almost any type of asset can be leased through lease-based financing, including equipment, machinery, vehicles, and real estate.',
          'Is lease-based financing a secured investment?':
              'Is lease-based financing a secured investment?',
          'Lease-based financing is considered secure as it is backed by assets as collateral.':
              'Lease-based financing is considered secure as it is backed by assets as collateral.',
          'Is ownership of the asset preserved in lease-based financing?':
              'Is ownership of the asset preserved in lease-based financing?',
          'Yes. the lessor (person leasing) will transfer all risk and rewards associated with ownership of the asset to the lessee (borrower) but without transferring the asset’s ownership.':
              'Yes. the lessor (person leasing) will transfer all risk and rewards associated with ownership of the asset to the lessee (borrower) but without transferring the asset’s ownership.',
          'Is there a default risk with lease-backed financing?':
              'Is there a default risk with lease-backed financing?',
          'In the event that a company fails to repay a lease rental investment, the investor may have the right to take legal action to recover the outstanding amount. While there is no 100% guarantee, most platforms have safeguards in place for reclaiming the asset and for releasing the same.':
              'In the event that a company fails to repay a lease rental investment, the investor may have the right to take legal action to recover the outstanding amount. While there is no 100% guarantee, most platforms have safeguards in place for reclaiming the asset and for releasing the same.',
          'The rentals earned from lease-based financing investments are taxable under the head “Income from Other Sources&quot;. The applicable tax rate depends on the investor&#39;s income tax slab.':
              'The rentals earned from lease-based financing investments are taxable under the head “Income from Other Sources&quot;. The applicable tax rate depends on the investor&#39;s income tax slab.',
          'Venture Debt FAQ': 'Venture Debt FAQ',
          'How does venture debt work?': 'How does venture debt work?',
          "Venture debt is typically available to startups and high-growth companies that have already raised equity financing from venture capitalists or angel investors. The lender may evaluate the company's financials, business plan, and growth prospects before approving the loan. In exchange for the loan, the lender receives interest payments and other fees.":
              "Venture debt is typically available to startups and high-growth companies that have already raised equity financing from venture capitalists or angel investors. The lender may evaluate the company's financials, business plan, and growth prospects before approving the loan. In exchange for the loan, the lender receives interest payments and other fees.",
          'Why do companies need Venture Debt?':
              'Why do companies need Venture Debt?',
          'Venture Debt offers companies a flexible way to raise capital while avoiding the dilution of ownership that can come with equity financing. This allows companies to maintain greater control over their operations and future growth.':
              'Venture Debt offers companies a flexible way to raise capital while avoiding the dilution of ownership that can come with equity financing. This allows companies to maintain greater control over their operations and future growth.',
          'Who facilitates Venture debt?': 'Who facilitates Venture debt?',
          'Venture debt is primarily facilitated by specialized lenders that have a better understanding of the unique needs and risks of startups, rather than traditional banks.':
              'Venture debt is primarily facilitated by specialized lenders that have a better understanding of the unique needs and risks of startups, rather than traditional banks.',
          'The investor will receive which instrument?':
              'The investor will receive which instrument?',
          'Investments in Venture Debt may be made through debt instruments such as non-convertible debentures (NCDs), bonds, or commercial paper.':
              'Investments in Venture Debt may be made through debt instruments such as non-convertible debentures (NCDs), bonds, or commercial paper.',
          'The interest earned will be taxed as per the investor&#39;s applicable tax slab.':
              'The interest earned will be taxed as per the investor&#39;s applicable tax slab.',
          'What are the risks of venture debt?':
              'What are the risks of venture debt?',
          "Startups and high-growth companies are more prone to failure, which makes venture debt riskier than other forms of debt financing. The lender may charge higher interest rates and fees to compensate for the higher risk. In case of loan default, the lender may seize the company's assets, which can have a negative impact on its operations.":
              "Startups and high-growth companies are more prone to failure, which makes venture debt riskier than other forms of debt financing. The lender may charge higher interest rates and fees to compensate for the higher risk. In case of loan default, the lender may seize the company's assets, which can have a negative impact on its operations.",
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
          "What are AIFs?": "एआईएफ क्या हैं?",
          "AIFAns1":
              "वैकल्पिक निवेश कोष (एआईएफ) एक प्रकार का निवेश कोष है जो भारतीय प्रतिभूति और विनिमय बोर्ड (सेबी) के साथ पंजीकृत है। वे आम तौर पर उच्च-निवल-मूल्य वाले व्यक्तियों, भारतीय या विदेशी द्वारा स्थापित निजी तौर पर जमा किए गए निवेश वाहन हैं। परिभाषित निवेश नीति के अनुसार। एआईएफ पारंपरिक निवेश वाहनों जैसे म्युचुअल फंड या ईटीएफ से अलग हैं, और लाभ कमाने के लिए गैर-पारंपरिक रास्ते जैसे उद्यम पूंजी, निजी इक्विटी, हेज फंड, प्रबंधित वायदा, आदि में निवेश करते हैं, या निवेशकों को लाभ। एआईएफ निवेशकों को वैकल्पिक निवेश में भाग लेने और अपने पोर्टफोलियो में विविधता लाने का अवसर प्रदान करते हैं, जबकि फंड मैनेजरों को उनकी निवेश रणनीतियों में अधिक लचीलेपन की पेशकश भी करते हैं।",
          "Who can invest in AIF?": "एआईएफ में कौन निवेश कर सकता है?",
          "AIFAns2":
              "कोई भी निवेशक, चाहे वह भारतीय, विदेशी, या अनिवासी भारतीय हो, एआईएफ में निवेश कर सकता है, जब तक कि उसके पास निवेश के लिए आवश्यक धन है, और असूचीबद्ध और अतरलक्षित प्रतिभूतियों पर जोखिम लेने को तैयार है। एआईएफ में निवेश करने के लिए निवेशक को आय, पैन कार्ड और आईडी प्रमाण का प्रमाण देना होगा",
          "What is the minimum amount needed to invest in AIF?":
              "एआईएफ में निवेश करने के लिए आवश्यक न्यूनतम राशि क्या है?",
          "AIFAns3":
              """एंजेल फंड" को छोड़कर भारत में सभी एआईएफ श्रेणियों को न्यूनतम 1 करोड़ रुपये के निवेश की आवश्यकता है, जबकि एंजेल फंड के लिए यह राशि 25 लाख रुपये है। एआईएफ के कर्मचारी या निदेशक के मामले में, निवेश का न्यूनतम मूल्य 25 लाख रुपये होगा।""",
          "In Which Formats Can an AIF Be Set Up?":
              "किस प्रारूप में एआईएफ स्थापित किया जा सकता है?",
          "AIFAns4":
              "एआईएफ फंड एक ट्रस्ट, सीमित देयता भागीदारी (एलएलपी), या कॉर्पोरेट निकाय के रूप में स्थापित किए जाते हैं।",
          "Size of the AIF scheme": "एआईएफ योजना का आकार",
          "AIFAns5":
              "प्रत्येक एआईएफ योजना में न्यूनतम 20 करोड़ रुपये (एंजल फंड के लिए 10 करोड़ रुपये) का कोष होना चाहिए। इसके साथ ही, प्रत्येक योजना में निवेशकों की संख्या पर भी एक सीमा है। अधिकांश योजनाओं में 1000 से अधिक नहीं हो सकते हैं। निवेशक, जबकि एंजेल फंड अधिकतम 200 निवेशकों को पूरा कर सकते हैं।",
          "Alternative Investment Funds v/s Mutual Funds":
              "वैकल्पिक निवेश कोष v/s म्युचुअल फंड",
          "AIFAns6":
              'वैकल्पिक निवेश फंड म्यूचुअल फंड की तुलना में अधिक लचीलेपन की पेशकश करते हैं क्योंकि वे गैर-सूचीबद्ध शेयरों में निवेश करते हैं और शॉर्टिंग और लीवरेज का भी उपयोग करते हैं। काफी जोखिम, एआईएफ निवेश के अच्छे विकल्प लगते हैं। लेकिन जो लोग कम से ज्यादा जोखिम उठा सकते हैं, उनके लिए म्युचुअल फंड एक रास्ता है। वैकल्पिक निवेश कोष और म्युचुअल फंड के बीच निर्णय आपके निवेश उद्देश्यों, उपलब्ध पूंजी और दीर्घकालिक इरादों पर आधारित होना चाहिए।',
          "Difference between AIF and PMS": "एआईएफ और पीएमएस के बीच अंतर",
          "AIFAns7":
              "पोर्टफोलियो मैनेजमेंट सिस्टम (पीएमएस) में, प्रत्येक निवेशक का पोर्टफोलियो अलग होता है, और यह एक अनुकूलित पेशकश है। पीएमएस एक निवेश कोष बनाने के लिए विभिन्न निवेशकों से धन एकत्र नहीं कर सकता है। पीएमएस निवेशक जब चाहें अपने निवेश से बाहर निकलने का विकल्प चुन सकते हैं। दूसरी ओर एआईएफ निवेशकों से धन एकत्र करते हैं और इसकी लॉक-इन अवधि 3 से 5 वर्ष तक होती है।",
          "View Categories": "श्रेणियां देखें",
          "Alternative Investment Funds(AIF)": "वैकल्पिक निवेश कोष (एआईएफ)",
          'What are the benefits of investing through an AIF?':
              'एआईएफ के जरिए निवेश करने के क्या फायदे हैं?',
          "> Regulations are in place:": "> विनियम लागू हैं:",
          "AIFAns8":
              "एआईएफ को सेबी एआईएफ विनियमों के तहत विनियमित किया जाता है। सेबी के अनुसार, यदि निवेशक सामूहिक रूप से निवेश करने के लिए धन जमा करते हैं, तो वे इसे केवल एआईएफ के माध्यम से कर सकते हैं। वे एलएलपी, प्राइवेट लिमिटेड कंपनियों आदि के माध्यम से निवेश नहीं कर सकते।",
          "> Higher Returns:": "> उच्च रिटर्न:",
          "AIFAns9":
              "एआईएफ निवेशकों को वैकल्पिक प्रतिभूतियों में \n एक्सपोजर देते हैं \n और पारंपरिक \n निवेशों की तुलना में \n अधिक रिटर्न देते हैं। इसलिए, एआईएफ में \n निवेश करके, निवेशक अपने \n पोर्टफोलियो के समग्र प्रदर्शन में सुधार करते हैं और हासिल करने में मदद करते हैं। लॉन्ग-\n टर्म कैपिटल एप्रिसिएशन।",
          "> Low Volatility:": "> कम अस्थिरता:",
          "AIFAns10":
              "एआईएफ निवेश, पारंपरिक निवेशों के विपरीत, \n बाजार के उतार-चढ़ाव पर निर्भर नहीं हैं और इसलिए पारंपरिक इक्विटी निवेशों की तुलना में \n कम अस्थिर हैं।",
          "> Diversification:": "> विविधीकरण:",
          "AIFAns11":
              "एआईएफ अपने \n लचीलेपन के कारण विविधीकरण के लिए व्यापक \n गुंजाइश देता है। कोष प्रबंधकों के पास कई \n निवेश विकल्पों और बाजार \n रणनीतियों को अपनाने की \n गुंजाइश होती है। बदले में, यह एक पोर्टफोलियो के विविधीकरण में \n मदद करता है। ",
          "> Better Negotiation with AIF:": "> एआईएफ के साथ बेहतर बातचीत:",
          "AIFAns12":
              "एआईएफ \n पूल किए गए धन के साथ सौदा करता है जो \n अच्छे आकार की मात्रा में निवेश किया जाता है, \n और इसलिए \n निवेशकों को बेहतर \n बातचीत करने की शक्ति प्रदान करता है। पारंपरिक \n निवेश में, निवेशकों को केवल \n न्यूनतम स्वामित्व मिलता है।",
          "> Professional Guidance:": "> व्यावसायिक मार्गदर्शन:",
          "AIFAns13": "पैसा \n विशेषज्ञ पेशेवरों द्वारा प्रबंधित किया जाता है",
          'Downsides of AIF Investment': 'एआईएफ निवेश के नकारात्मक पहलू',
          "AIFAns14":
              "हालांकि एआईएफ पारंपरिक निवेश से संबंधित नहीं है, लेकिन ये फंड भी उच्च अस्थिरता के अधीन हैं। कभी-कभी ऐसा होता है कि अगर कोई एआईएफ विचार बाजार में काम नहीं करता है, तो फंड को भारी नुकसान होता है।",
          "AIFAns15":
              "तरलता संकट भी एआईएफ निवेश का एक और नकारात्मक पहलू है। लॉक-इन खत्म होने के बाद भी, कभी-कभी आप अपना निवेश पूरी तरह से वापस नहीं ले सकते।",
          "AIFAns16": "ऋण पत्रों पर महत्वपूर्ण ऋण चूक भी एक संभावना है।",
          "AIFAns17":
              "एआईएफ में व्यय अनुपात भी बहुत अधिक है। उच्च कराधान दरें, विशेष रूप से श्रेणी III एआईएफ पर आपको फंड से मिलने वाले रिटर्न को कम कर सकती हैं।",
          "Alternative Investment Funds categories":
              "वैकल्पिक निवेश निधि श्रेणियां",
          "Alternative Investment Funds Category I":
              "वैकल्पिक निवेश कोष श्रेणी I",
          "Alternative Investment Funds Category II":
              "वैकल्पिक निवेश कोष श्रेणी II",
          "Alternative Investment Funds Category III":
              "वैकल्पिक निवेश कोष श्रेणी III",
          'View Categories deals': 'श्रेणी के सौदे देखें',
          "AIFC1Ans1":
              "सेबी विनियम श्रेणी के अनुसार, I AIF वे AIF हैं जो प्रारंभिक चरण के स्टार्टअप, सामाजिक उद्यम, SME, बुनियादी ढांचा स्टार्टअप, या अन्य क्षेत्रों या क्षेत्रों में निवेश करते हैं, जिन्हें सरकार सामाजिक या आर्थिक रूप से वांछनीय मानती है। इसमें उद्यम पूंजी निधि जैसे निवेश शामिल हैं। एसएमई फंड, सोशल वेंचर फंड, इंफ्रास्ट्रक्चर फंड आदि।",
          "AIFC2Ans1":
              "सेबी के विनियमों के अनुसार श्रेणी II एआईएफ एआईएफ हैं जो श्रेणी I और III में नहीं आते हैं और जो दिन-प्रतिदिन की परिचालन आवश्यकताओं को पूरा करने के अलावा अन्य लाभ या उधार नहीं लेते हैं। सरकार या नियामक किसी भी रियायत की पेशकश नहीं करता है या इन निधियों के लिए प्रोत्साहन। निजी इक्विटी फंड या डेट फंड श्रेणी II एआईएफ के उदाहरण हैं। इस श्रेणी में 80% एआईएफ शामिल हैं और एआईएफ के बीच सबसे लोकप्रिय हैं।",
          "AIFC3Ans1":
              "सेबी विनियमों के अनुसार श्रेणी III एआईएफ एआईएफ हैं जो विविध या जटिल व्यापारिक रणनीतियों को नियोजित करते हैं और सूचीबद्ध या गैर-सूचीबद्ध डेरिवेटिव्स में निवेश के माध्यम से लाभ उठा सकते हैं। एआईएफ जैसे हेज फंड या फंड जो अल्पकालिक रिटर्न या ऐसे अन्य फंड बनाने का इरादा रखते हैं। जो ओपन-एंडेड हैं और जिनके लिए सरकार या किसी अन्य नियामक द्वारा कोई विशिष्ट प्रोत्साहन या रियायतें नहीं दी जाती हैं। इसलिए, श्रेणी III के तहत फंड सबसे जटिल हैं और कम समय में उच्च रिटर्न प्राप्त करने के लिए एक विविध व्यापार रणनीति का उपयोग करते हैं। ",
          "FractionalTxt1":
              "आंशिक रियल एस्टेट निवेश निवेशकों को एक अचल संपत्ति संपत्ति के अंश खरीदने की अनुमति देता है, और उस पर किराया, पूंजीगत प्रशंसा आदि जैसे रिटर्न प्राप्त करता है। निवेशक लागत को विभाजित करते हैं, और कागजी कार्रवाई की परेशानी के बिना उस संपत्ति से आने वाले किसी भी लाभ को साझा करते हैं, संपत्ति का रखरखाव, आदि।",
          "Learn more": "और अधिक जानें",
          "Expected Return (IRR)": "अपेक्षित वापसी (आईआरआर)",
          "~ 11-13% p.a.": "~ 11-13% प्रति वर्ष",
          "Suggested Investment Horizon": "सुझाए गए निवेश क्षितिज",
          "More than 4 Years": "4 साल से अधिक",
          "Minimum Investment": "न्यूनतम निवेश",
          "25,00,000": "25,00,000",
          "View more product": "अधिक उत्पाद देखें",
          "Peer to Peer Lending": "पीयर टू पीयर लेंडिंग",
          "PeerDisc":
              "पीयर टू पीयर लेंडिंग कर्जदारों (निवेशकों) को ऋण समझौते के तहत, बैंकों जैसे किसी भी वित्तीय संस्थान के माध्यम से जाने के बिना, सीधे उधारदाताओं से जोड़ता है।",
          "Invoice Discounting": "बिल में छूट",
          "InvoiceDisc":
              "इनवॉयस डिस्काउंटिंग एक कार्यशील नकदी प्रवाह प्राप्त करने और अपनी तत्काल वित्तीय जरूरतों को पूरा करने के लिए कंपनी के अवैतनिक चालानों का उपयोग करने का वित्तीय अभ्यास है।",
          "~12-18% p.a.": "~12-18% प्रति वर्ष",
          "~ 3-18 months": "~ 3-18 महीने",
          "1,00,000": "1,00,000",
          "Revenue-based Financing": "राजस्व आधारित वित्तपोषण",
          "RevenueDisc":
              "राजस्व-आधारित वित्तपोषण एक निवेश है जो छोटे और बढ़ते स्टार्टअप को निवेशित पूंजी के साथ अपने व्यापार को बढ़ाने में मदद करता है, बदले में उनके चालू सकल राजस्व के एक निश्चित प्रतिशत के बदले में, मुख्य रूप से मासिक राजस्व के रूप में मापा जाता है।",
          "~ 12%-16% p.a.": "~ 12%-16% प्रति वर्ष",
          "~ 1-4 years": "~ 1-4 महीने",
          "5,00,000": "5,00,000",
          "Lease based Financing": "पट्टा आधारित वित्तपोषण",
          "LeaseDisc":
              "यह एक प्रकार का वित्तपोषण है जहां ऋणदाता (पट्टादाता) किसी अन्य व्यक्ति, पट्टेदार, को आवधिक भुगतानों के खिलाफ संपत्ति का उपयोग करने का अधिकार देता है।",
          "Investment Horizon:": "निवेश क्षितिज:",
          "~ 12-36 months": "~ 12-36 महीने",
          "Clean and Green Assets": "स्वच्छ और हरित संपत्ति",
          "CleanDisc":
              "क्लीन एंड ग्रीन एसेट इन्वेस्टमेंट पर्यावरण के प्रति जागरूक, टिकाऊ और सामाजिक रूप से जागरूक कंपनियों में निवेश करने का तरीका है।",
          "~ 9%-12% p.a.": "~ 9%-12% प्रति वर्ष",
          "~ 6-36 months": "~ 6-36 महीने",
          "50,000": "50,000",
          "Securitized Debt Instruments": "प्रतिभूतिकृत ऋण लिखत",
          "SecureDisc":
              "प्रतिभूतिकरण में गैर-तरल वित्तीय संपत्तियों से संपत्ति के एक पूल का निर्माण शामिल है, जिन्हें बाजार योग्य प्रतिभूतियों में पुनर्पैकेज या बंडल किया जाता है। प्रतिभूतिकृत ऋण उपकरण वित्तीय प्रतिभूतियां हैं जैसे बांड/प्रमाण पत्र जो व्यक्तिगत ऋण (ऋण) को सुरक्षित करके बनाए जाते हैं।",
          "More than 3 Years": "3 साल से अधिक",
          "High Yield Fixed Income": "हाई यील्ड फिक्स्ड इनकम",
          "HighDisc":
              "हाई-यील्ड बॉन्ड या जंक बॉन्ड ऐसे बॉन्ड होते हैं जो निवेश-ग्रेड बॉन्ड की तुलना में कम क्रेडिट दरों के कारण ब्याज की उच्च दरों का भुगतान करते हैं। डिफ़ॉल्ट होने की उनकी उच्च संभावना के कारण, वे निवेशकों को क्षतिपूर्ति करने के लिए उच्च उपज का भुगतान करते हैं - इसलिए कहा जाता है उच्च उपज बांड।",
          "~ 1-5 years": "~ 1-5 साल",
          "Venture Debt": "उद्यम ऋण",
          "VentureDisc":
              "उद्यम ऋण उद्यम पूंजी समर्थित कंपनियों को उनकी वित्तीय कमी को पूरा करने के लिए कार्यशील पूंजी जुटाने के लिए प्रदान किया गया ऋण है।",
          "One-Touch": "एक-स्पर्श",
          "Use your fingerprint to easily log in!":
              "अपने फिंगरप्रिंट का उपयोग करके आसानी से लॉगिन करें!",
          "Touch the fingerprint sensor": "फिंगरप्रिंट सेंसर को छूने",
          "Login with Pin": "पिन के साथ लॉगिन करें",
          "4 Digit Pin": "4 अंकों वाली पिन",
          "Use your 4 Digit Pin to easily log in!":
              "अपने 4 अंकों वाली पिन का उपयोग करके आसानी से लॉगिन करें!",
          'Enter PIN': 'पिन दर्ज करें',
          'Pin is Empty': 'पिन खाली है',
          "Forgot PIN?": "पिन भूल गए?",
          "Press back again to exit": "बाहर निकलने के लिए फिर से बैक दबाएं",
          "Skip": "छोड़ें",
          "Welcome to FreeU": "FreeU में आपका स्वागत है",
          "Sign in to continue.": "जारी रखने के लिए साइन इन करें।",
          "Email / Phone": "ईमेल / फोन",
          "Enter Email or Phone Number": "ईमेल या फोन नंबर दर्ज करें",
          "Please Enter Email or Phone Number":
              "कृपया ईमेल या फोन नंबर दर्ज करें",
          'Login Using OTP': 'OTP का उपयोग करके लॉगिन करें',
          "Password": "पासवर्ड",
          "Please Enter Password": "कृपया पासवर्ड दर्ज करें",
          "Enter Password": "पासवर्ड दर्ज करें",
          'Forgot Password?': 'पासवर्ड भूल गए?',
          'Sign In': 'साइन इन करें',
          "Don't have an account?": "अकाउंट नहीं है?",
          'Create account': 'अकाउंट बनाएं',
          "Login with OTP": "ओटीपी के साथ लॉगिन करें",
          "Please enter your mobile number": "कृपया अपना मोबाइल नंबर दर्ज करें",
          "Please Enter Mobile Number": "कृपया मोबाइल नंबर दर्ज करें",
          "Please Enter Correct Mobile Number":
              "कृपया सही मोबाइल नंबर दर्ज करें",
          "OTP sent to": "ओटीपी भेजा गया है",
          "Enter OTP": "ओटीपी दर्ज करें",
          "Please Enter verification code": "कृपया सत्यापन कोड दर्ज करें",
          "OTP length should be atleast 4": "ओटीपी लंबाई कम से कम 4 होनी चाहिए",
          "Didn't you receive any code ?": "क्या आपको कोई कोड नहीं मिला?",
          'Resend': 'पुन: भेजें',
          "Verify": "सत्यापित करें",
          'Would you like a guided tour of our app?':
              'क्या आप हमारे ऐप की एक गाइडेड यात्रा के लिए इच्छुक हैं?',
          "Don't show this message again": "इस संदेश को फिर से न दिखाएं",
          "No": "नहीं",
          "Yes": "हाँ",
          "Complete Your Profile": "अपनी प्रोफ़ाइल पूरी करें",
          "Enter your full name": "अपना पूरा नाम दर्ज करें",
          "Full Name*": "पूरा नाम*",
          "Full Name": "पूरा नाम",
          "Enter your email address": "अपना ईमेल पता दर्ज करें",
          "Email Id*": "ईमेल आईडी*",
          "Email Id": "ईमेल आईडी",
          'Enter your Email address': 'अपना ईमेल पता दर्ज करें',
          'Enter a Valid Email address': 'एक वैध ईमेल पता दर्ज करें',
          "Enter your phone number": "अपना फ़ोन नंबर दर्ज करें",
          "Phone Number*": "फ़ोन नंबर*",
          "Please Enter Phone Number": "कृपया फ़ोन नंबर दर्ज करें",
          "Enter your date of birth": "अपनी जन्म तिथि दर्ज करें",
          "Enter your occupation": "अपना पेशा दर्ज करें",
          "Occupation*": "पेशा*",
          "Please Enter Occupation": "कृपया पेशा दर्ज करें",
          "Enter your address": "अपना पता दर्ज करें",
          "Please Enter Address": "कृपया पता दर्ज करें",
          "Please Enter Aadhar Number": "कृपया आधार नंबर दर्ज करें",
          "Enter Aadhar Number": "आधार नंबर दर्ज करें",
          "Enter PAN Number": "PAN नंबर दर्ज करें",
          "Please Enter PAN Number": "कृपया PAN नंबर दर्ज करें",
          "Forgot Password": "पासवर्ड भूल गए",
          "forgotPwdtxt1":
              "हम आपके खाते पर एक सत्यापन ईमेल भेजेंगे ताकि आपका पासवर्ड रीसेट कर सकें",
          "Phone number": "फ़ोन नंबर",
          "Please Enter a Phone Number": "कृपया फ़ोन नंबर दर्ज करें",
          "Please Enter a Valid Phone Number":
              "कृपया एक वैध फ़ोन नंबर दर्ज करें",
          'OTP Sent to registered mobile number':
              'OTP पंजीकृत मोबाइल नंबर पर भेजा गया है',
          "Proceed": "आगे बढ़ें",
          "Enter number": "नंबर दर्ज करें",
          "Reset Password": "पासवर्ड रीसेट करें",
          "New Password": "नया पासवर्ड",
          'Enter your password': 'अपना पासवर्ड दर्ज करें',
          'Password is Empty': 'पासवर्ड खाली है',
          'Enter valid password': 'वैध पासवर्ड दर्ज करें',
          'Has at least 8 characters': 'कम से कम 8 वर्ण हों',
          'Has at least 1 uppercase letter and symbol':
              'कम से कम 1 अपरकेस अक्षर और संकेत हों',
          'Has a number': 'एक संख्या हो',
          "Confirm Password": "पासवर्ड की पुष्टि कीजिए",
          'Password Not Matched': 'पासवर्ड मेल नहीं खाता',
          "Terms And Conditions": "नियम एवं शर्तें",
          'I accept Terms & Conditions': 'मैं नियम एवं शर्तें स्वीकार करता हूँ',
          "Sign up": "साइन अप करें",
          'Enter your name': 'अपना नाम दर्ज करें',
          'Mobile number is required': 'मोबाइल नंबर आवश्यक है',
          'Enter valid mobile number': 'वैध मोबाइल नंबर दर्ज करें',
          "Phone Number": "फ़ोन नंबर",
          "I accept the ": "मैं स्वीकार करता हूँ ",
          "Terms & Conditions*": "नियम एवं शर्तें*",
          'add your finger print to login':
              'लॉगिन के लिए अपना फिंगरप्रिंट जोड़ें',
          "Set-up Touch Id": "टच आईडी सेट करें",
          "Set up Now!": "अभी सेट करें!",
          'will do it later': 'बाद में करेंगे',
          "Security questions": "सुरक्षा सवाल",
          "In what city were you born?": "आप किस शहर में पैदा हुए थे?",
          "Answer": "उत्तर",
          "Please Enter Answer": "कृपया उत्तर दें",
          "What is the name of your favorite pet?":
              "आपके पसंदीदा पालतू जानवर का नाम क्या है?",
          "What is your mother's maiden name?":
              "आपकी मां की शादीशुदा नाम क्या है?",
          "What high school did you attend?":
              "आपने कौनसे उच्च विद्यालय में अध्ययन किया है?",
          "Let's set your 4 Digit Pin": "अब आपका 4 अंकों का पिन सेट करें",
          "Please Enter 4 Digit PIN": "कृपया 4 अंकों का पिन दर्ज करें",
          "PIN length should be atleast 4": "पिन लंबाई कम से कम 4 होनी चाहिए",
          "Choose a PIN of Your choice": "अपनी पसंद के अनुसार पिन चुनें",
          'PIN is Empty': 'पिन खाली है',
          "Please Re-Enter the PIN": "कृपया पिन फिर से दर्ज करें",
          "security-first": "सुरक्षा पहले",
          "Security First": "सुरक्षा पहले",
          "Select to login Method": "लॉगइन विधि चुनें",
          "4 Digit PIN": "4 अंकों का पिन",
          "Touch Id": "टच आईडी",
          "What are Alternative Assets?": "वैकल्पिक एसेट क्या हैं?",
          'splashTxt1':
              "जैसा कि नाम से सूचित होता है, वैकल्पिक निवेश वह वित्तीय निवेश हैं जो एक पारंपरिक या औसत निवेश के तौर पर वर्गीकृत नहीं किया जा सकता है।",
          "Difference between Alternative & Traditional Investments":
              "वैकल्पिक और पारंपरिक निवेश के बीच अंतर",
          'splashTxt2':
              "पारंपरिक निवेश ऐसे निवेश होते हैं जो कि किसी सार्वजनिक बाजार पर खरीदे, बेचे और व्यापार किए जा सकते हैं।",
          'vs': 'बनाम',
          'splashTxt3':
              "अल्टरनेटिव निवेश दूसरी ओर, सार्वजनिक बाजार में नहीं बिकते।",
          "01. Venture Capital Fund": "01. वेंचर कैपिटल फंड",
          'ventureDes':
              """वीसीएफ एक एआईएफ है जो मुख्य रूप से नए उत्पादों, नई सेवाओं, प्रौद्योगिकी या बौद्धिक संपदा अधिकार आधारित गतिविधियों या एक नए व्यापार मॉडल में शामिल स्टार्ट-अप, उभरते या शुरुआती चरण के उद्यम पूंजी उपक्रमों की गैर-सूचीबद्ध प्रतिभूतियों में निवेश करता है और इसमें शामिल होगा एक परी निधि।
          वेंचर कैपिटल फंड या वीसीएफ स्टार्ट-अप्स में निवेश करते हैं जिनमें आकर्षक विकास क्षमता होती है, लेकिन प्रारंभिक चरण में या विस्तार के दौरान स्थापित करने के लिए धन की कमी होती है। इन स्टार्टअप्स को पारंपरिक पूंजी बाजारों के जरिए फंड हासिल करने में काफी मुश्किलों का सामना करना पड़ता है। इसलिए, वीसीएफ उनकी वित्तीय कठिनाइयों का एक संपूर्ण समाधान प्रदान करते हैं। वेंचर कैपिटल फंड स्टार्टअप के प्री-स्टार्ट चरण के दौरान अतिरिक्त कौशल और संसाधनों के साथ प्रारंभिक चरण का वित्तपोषण प्रदान करता है। यह एक स्टार्टअप को समग्र संसाधन प्रदान करता है ताकि वह खरोंच से तकनीकी नवाचार विकसित कर सके।
          वीसीएफ को सेबी द्वारा नियंत्रित किया जाता है। नई परियोजनाओं, या स्टार्टअप्स के वित्तपोषण में एक उच्च जोखिम शामिल है। लेकिन वीसीएफ के साथ, निवेशक आमतौर पर जोखिम लेने को तैयार होते हैं, क्योंकि इन परियोजनाओं की उच्च विकास क्षमता के परिणामस्वरूप आमतौर पर निवेश पर उच्च रिटर्न मिलता है।""",
          "More than 7 Years": "7 साल से अधिक",
          "02. Infrastructure Fund": "02. इंफ्रास्ट्रक्चर फंड",
          "InfrastrutureDes":
              "सेबी के विनियमों के अनुसार, “इन्फ्रास्ट्रक्चर फंड” का अर्थ एक एआईएफ है जो मुख्य रूप से असूचीबद्ध प्रतिभूतियों या साझेदारी हित या सूचीबद्ध ऋण या निवेशित कंपनियों के प्रतिभूतिकृत ऋण उपकरणों या संचालन, विकास या होल्डिंग के उद्देश्य से गठित विशेष प्रयोजन वाहनों में निवेश करता है। मूलढ़ांचा परियोजनाएं;"
                  'इन्फ्रास्ट्रक्चर फंड, एक श्रेणी 1 वैकल्पिक निवेश कोष (एआईएफ), निजी खिलाड़ियों से निवेश करके पूंजी जुटाता है और मुख्य रूप से उन कंपनियों में निवेश करता है जो बुनियादी ढांचा परियोजनाओं का विकास करती हैं। इंफ्रास्ट्रक्चर फंड सार्वजनिक बुनियादी ढांचे जैसे सड़क, हवाई अड्डे, नवीकरणीय ऊर्जा, पानी, रेलवे, ट्रांसमिशन और नगरपालिका ठोस अपशिष्ट के विकास में निवेश करते हैं। इंफ्रास्ट्रक्चर फंड को प्रोत्साहित करने के लिए भारत सरकार के पास प्रोत्साहन और रियायतें हैं, क्योंकि वे भारतीय अर्थव्यवस्था को सकारात्मक रूप से प्रभावित करने में मदद करते हैं। ',
          "More than 6 Years": "6 से अधिक वर्ष",
          "03. Angel Fund": "03. एंजेल फंड",
          'AngelDes':
              "एंजेल फंड एक प्रकार का वेंचर कैपिटल फंड है जो उच्च विकास क्षमता वाले स्टार्टअप को उनके शुरुआती विकास चरणों के दौरान आवश्यक पूंजी प्रदान करने पर ध्यान केंद्रित करता है, जब वित्तपोषण के पारंपरिक स्रोत उपलब्ध नहीं हो सकते हैं। एंजेल फंड मजबूत बनाने में महत्वपूर्ण भूमिका निभाते हैं। स्टार्टअप पारिस्थितिकी तंत्र उनका समर्थन करके और उन्हें सफल व्यवसायों में विकसित करने में मदद कर रहा है।"
                  '\n\nएक ‘एंजेल इन्वेस्टर’ आमतौर पर एक उच्च-निवल मूल्य वाला व्यक्ति होता है जो कंपनी में स्वामित्व इक्विटी के बदले स्टार्ट-अप या उद्यमियों के लिए धन प्रदान करता है। यह या तो एक बार का निवेश हो सकता है, या स्टार्ट-अप के संघर्षपूर्ण वर्षों के दौरान लगातार वित्तीय सहायता हो सकती है। कई छोटी कंपनियों के लिए, वित्तीय समर्थन के बिना, एंजल निवेश निवेश का एकमात्र प्राथमिक स्रोत है जो काम करता है। फंडिंग प्रदान करने के अलावा, एंजल फंड स्टार्टअप्स को मूल्यवान संसाधन जैसे प्रबंधन सलाह, मार्गदर्शन और उद्योग संपर्क भी प्रदान करते हैं जो उन्हें बढ़ने और सफल होने में मदद कर सकते हैं।',
          "Angel Fund": "एंजल फंड",
          "Open": "खुला हुआ",
          "Fully funded": "पूरी तरह से वित्तपोषित",
          "Resale": "पुनर्विक्रय",
          "No Data Found": "कोई डेटा नहीं मिला",
          "Piper Serica Angel Fund": "पाइपर सेरिका एंजल फंड",
          "Targeted IRR :": "लक्षित IRR :",
          "Commitment period :": "प्रतिबद्धता अवधि :",
          "10 Years": "10 वर्ष",
          "Capital Commitment :": "पूंजी प्रतिबद्धता :",
          "25 Lakh": "25 लाख",
          'View Details': 'विवरण देखें',
          'Registration No.': 'पंजीयन संख्या:',
          'Fund Category (I/II/III)': 'फंड श्रेणी (I/II/III)',
          'Fund Structure (Open/Closed)': 'फंड संरचना (खुला / बंद)',
          'Fund Strategy': 'फंड रणनीति',
          'Fund Domicile': 'फंड निवास स्थान',
          'Fund Manager Name': 'फंड प्रबंधक का नाम',
          'Website of the fund': 'फंड की वेबसाइट',
          'Fund Manager Experience': 'फंड प्रबंधक अनुभव',
          'Sponsor': 'स्पॉन्सर',
          'Manager': 'प्रबंधक',
          'Trustee': 'ट्रस्टी',
          'Auditor': 'समीक्षाकर्ता',
          'Valuer / Tax Advisor': 'मूल्यांकनकर्ता / टैक्स सलाहकार',
          'Credit Rating (if any)': 'क्रेडिट रेटिंग (यदि हो)',
          'Open Date': 'खुलने की तारीख',
          '1st Close Date': 'पहली बंद करने की तारीख',
          'Final Close Date': 'अंतिम बंद करने की तारीख',
          'Tenure from Final Close': 'अंतिम बंद होने के बाद अवधि',
          'Commitment Period': 'निष्ठा अवधि',
          'Native Currency': 'देशज मुद्रा',
          'Target Corpus': 'लक्ष्य कोरपस',
          'Investment Manager Contribution': 'निवेश प्रबंधक योगदान',
          'Minimum Capital Commitment': 'न्यूनतम पूंजी वादा',
          'Initial Drawdown': 'प्रारंभिक निकासी',
          'Accepting Overseas investment?': 'विदेशी निवेश स्वीकार कर रहे हैं?',
          'Target IRR (%)': 'लक्ष्य IRR (%)',
          '"Management Fees and Carry - Set Up Fee - Management Fee - Performance Fee"':
              '"प्रबंधन शुल्क और कैरी - सेटअप शुल्क - प्रबंधन शुल्क - प्रदर्शन शुल्क"',
          'Hurdle Rate': 'हर्डल दर',
          'Other Expenses': 'अन्य व्यय',
          'Focused Sectors (Industries in which they are investing)':
              'फोकस किए गए क्षेत्र (उन उद्योगों में जिनमें वे निवेश कर रहे हैं)',
          "Regions Covered (Geographical Locations covered by the fund)":
              "कवर किए गए क्षेत्र (फंड द्वारा कवर किए गए भौगोलिक स्थान)",
          'Closed': 'बंद',
          '"1. Invest only in start ups that have exponential growth business model 2.Business should not require constant infusion of capital to support growth 3.Tech has to be the core driver of business. Invest in bits and not atoms 4. Invest in founders first. Business models pivot 5. Invest along with other active investors who actively provide mentorship and guidance to young founders 6. Stay invested for as long as possible in successful start ups. Water the roses and cut the weeds 7.Reduce the impact of high mortality by building a portfolio of 30 to 40 companies"':
              '"1. केवल स्टार्ट अप्स में निवेश करें जिनके पास घातीय वृद्धि व्यवसाय मॉडल है 2. व्यवसाय को विकास का समर्थन करने के लिए पूंजी के निरंतर प्रवाह की आवश्यकता नहीं होनी चाहिए 3. तकनीक को व्यवसाय का मुख्य चालक होना चाहिए। बिट्स में निवेश करें न कि परमाणुओं में 4. निवेश करें पहले संस्थापक। व्यवसाय मॉडल धुरी 5. अन्य सक्रिय निवेशकों के साथ निवेश करें जो सक्रिय रूप से युवा संस्थापकों को सलाह और मार्गदर्शन प्रदान करते हैं। 6. सफल स्टार्ट अप में यथासंभव लंबे समय तक निवेशित रहें। गुलाबों को पानी दें और मातम काट दें 7. 30 से 40 कंपनियों का पोर्टफोलियो बनाकर उच्च मृत्यु दर"',
          'India': 'भारत',
          'Piper Serica': 'पाइपर सेरिका',
          'Piper Serica Advisors': 'पाइपर सेरिका सलाहकार',
          'Rupees': 'रुपये',
          'Minimum 2.5% or INR 50 lakhs whichever is lower':
              'न्यूनतम 2.5% या INR 50 लाख जो कि कम होता है',
          '"Minimum commitment of Rs. 25 lakh to be invested over 3 years."':
              '"3 साल में निवेश करने के लिए न्यूनतम 25 लाख रुपए की प्रतिबद्धता।"',
          '"Management Fee - 2% upto 1 Cr of aggregate capital commitment, otherwise 1.5% Performance Fee - 20% for Unit A & B holders (plus taxes & levies as applicable)"':
              '"प्रबंधन शुल्क - एकत्र पूंजी की प्रतिबद्धता तक 2%, अन्यथा 1.5% प्रदर्शन शुल्क - यूनिट A और B धारकों के लिए 20% (लागू होने वाले कर और शुल्कों के साथ)"',
          'Tech based Start-Up': 'टेक आधारित स्टार्ट-अप',
          'Invest now': 'अभी निवेश करें',
          "Thank You For Showing Your Interest":
              "आपके दिखाए गए रुझान के लिए धन्यवाद",
          "A FreeU Advisory Team will get back to you soon.":
              "फ्रीयू सलाहकार टीम जल्द ही आपसे संपर्क करेगी।",
          'View more products': 'अधिक उत्पाद देखें',
          "Infrastructure Fund": "इंफ्रास्ट्रक्चर फंड",
          'Benefits of investing in Infrastructure Fund':
              'इंफ्रास्ट्रक्चर फंड में निवेश करने के फायदे',
          "Infrastructure Funds provide investors with steady and consistent returns, mainly because demand for infrastructural services remain constant, or are constantly on the rise, even when the country’s economic growth is slow. Compared with other investments, these funds potentially offer more security against volatile stocks, and hence better at risk-management.":
              "इंफ्रास्ट्रक्चर फंड निवेशकों को स्थिर और संयत रिटर्न प्रदान करते हैं, मुख्य रूप से इसलिए कि इंफ्रास्ट्रक्चर सेवाओं की मांग स्थिर रहती है, या देश की आर्थिक वृद्धि धीमी होने पर भी लगातार बढ़ती है। अन्य निवेशों की तुलना में, ये फंड अस्थिर स्टॉक के खिलाफ अधिक सुरक्षा प्रदान करते हैं, और इसलिए जोखिम-प्रबंधन में बेहतर होते हैं।",
          'Features of Infrastructure AIF': 'इंफ्रास्ट्रक्चर AIF की विशेषताएं',
          'infraTxt1': '> उच्च जोखिम-उच्च रिटर्न निवेश'
              '\n\n> कम नकदता'
              '\n\n> लंबी निवेश अवधि'
              '\n\n> उच्च-क्षमता क्षेत्र में निवेश करने का मौका'
              '\n\n> वे स्टॉक एक्सचेंज पर सूचीबद्ध हो सकते हैं क्योंकि उनकी न्यूनतम व्यापार राशि 1 करोड़ होती है।'
              '\n\n> एक इंफ्रास्ट्रक्चर कंपनी में 25% से अधिक निवेश नहीं किया जा सकता।'
              '\n\n> न्यूनतम 75% निवेशीय धन कंपनियों के अनोटेड इक्विटी शेयरों या इक्विटी इंस्ट्रुमेंट में निवेश किए जाने चाहिए या फिर स्मॉल एंड मीडियम इंटरप्राइज एक्सचेंज या एक्सचेंज के स्मॉल एंड सेगमेंट में लिस्ट होने वाली कंपनियों में निवेश किए जाने चाहिए।'
              '\n\n> यूनिट होल्डर वर्ग I AIF के अन्य सबकैटेगरियों में निवेश कर सकते हैं, लेकिन FoF (फंड ऑफ फंड्स) में नहीं निवेश कर सकते।'
              '\n\n> इंफ्रास्ट्रक्चर बॉन्ड को उन्होंने अपने व्यवसाय कार्यों को चलाने के लिए सीधे या अप्रत्यक्ष रूप से धन का उधार न लेने के लिए निषिद्ध किया है।'
              '\n\n> इंफ्रास्ट्रक्चर फंड प्रत्येक योजना प्रति 1,000 निवेशकों को ही अनुमति देता है।',
          'Tenure: ': 'कार्यकाल: ',
          "infrraTxt2":
              "क्योंकि इंफ्रास्ट्रक्चर फंड श्रेणी 1 में आते हैं, इनके क्लोज-एंडेड होते हैं और इनकी न्यूनतम अवधि तीन साल से अधिक होती है, जो अतिरिक्त दो साल तक बढ़ाई जा सकती है। फंड अवधि के समाप्त होने के एक साल के भीतर निपटाएं",
          "Venture Capital Fund (VCF)": "वेंचर कैपिटल फंड (वीसीएफ)",
          "So how does a VCF work?": "वीसीएफ कैसे काम करता है?",
          "VentureTxt1":
              "वीसीएफ उन प्रत्येक निवेशकों से फंड पूल करते हैं जो अलग-अलग/ एकाधिक उद्यमों में निवेश करना चाहते हैं, उनके व्यवसाय योजनाओं, प्रोफाइल और विकास चरणों के आधार पर। एक बार निवेशकों ने प्रतिबद्धता जताई हो तो, वीसीएफ निवेशकों की पूंजी इकट्ठा करने के लिए हर संभव निवेशक के निवेश राशि को अंतिम रूप देता है। फिर फंड प्रबंधक (वीसीएफ) हाई ग्रोथ के साथ निजी इक्विटी निवेश ढूंढते हैं, जो निवेशकों को लाभ देने के सबसे अच्छे अवसर हो सकते हैं।"
                  '\n\n"वीसीएफ" का अधिकतर निवेश पहले चरणों में होता है और प्रत्येक निवेशक अपनी निवेश राशि के प्रतिशत के अनुसार लाभ प्राप्त करता है।'
                  '\n\nवेंचर कैपिटल फंड भारत में बढ़ रहे हैं, खासकर एचएनआईजी के कारण, जो बहुत सी पूंजी रखते हैं और उच्च जोखिम वाले रिटर्न निवेश विकल्पों की तलाश करते हैं। एआईएफ के तहत उनकी सम्मिलितता के बाद से, ये फंडिंग में बहुत सारे एनआरआई ने भारत में स्टार्टअप में निवेश करते हुए देखे हैं, जिससे अर्थव्यवस्था में वृद्धि हुई है।',
          'Types of VC Funds': 'वेंचर कैपिटल फंड के प्रकार',
          'VentureTxt2': "व्यवसाय के विभिन्न चरणों में फंड उपयोग के आधार पर, वेंचर कैपिटल फंडों को तीन विस्तृत श्रेणियों में वर्गीकृत किया गया है। शुरुआती-चरण वित्त, विस्तार वित्त, और अधिग्रहण / बयाउट वित्त।"
              '\n\n> शुरुआती-चरण वित्त: शुरुआती-चरण वित्त में 3 उप-श्रेणियां होती हैं। ये सीड वित्त, स्टार्टअप वित्त और पहले चरण का वित्त होता है।'
              '\nसीड वित्त उद्यमी को एक स्टार्टअप ऋण के लिए योग्यता प्राप्त करने के उद्देश्य से दिया जाता है। जब शुरुआती-चरण की कंपनियों को उनकी सेवाओं और उत्पाद विकास को पूरा करने के लिए धन की आवश्यकता होती है, तब इसे स्टार्टअप वित्त कहा जाता है। अंततः, जब कंपनियां वेंचर कैपिटल का उपयोग पूरी तरह से व्यवसाय गतिविधियों को शुरू करने के लिए करती हैं, तब यह पहले चरण का वित्त होता है।'
              '\n\n> विस्तार वित्तपोषण: विस्तार वित्तपोषण को दूसरे चरण के वित्तपोषण, पुल वित्तपोषण और तीसरे चरण के वित्तपोषण में वर्गीकृत किया गया है। दूसरे चरण और तीसरे चरण का वित्तपोषण एक प्रकार का विस्तार वित्तपोषण है, जो आम तौर पर कंपनियों को प्रदान किया जाता है ताकि वे कंपनियां अपने व्यवसाय और संचालन को बढ़ा सकें। दूसरी ओर, ब्रिज फाइनेंसिंग एक प्रकार का फाइनेंसिंग है जो आम तौर पर उन कंपनियों को प्रदान किया जाता है जिनकी व्यावसायिक रणनीति में आईपीओ के माध्यम से सार्वजनिक रूप से जाने की योजना शामिल है।'
              '\n\n> अधिग्रहण या बायआउट वित्तपोषण: अधिग्रहण या बायआउट वित्तपोषण एक प्रकार का वित्तपोषण है जिसका उपयोग अधिग्रहण या लीवरेज्ड बायआउट के लिए किया जाता है। एक अधिग्रहण में, एक कंपनी दूसरी कंपनी या किसी अन्य कंपनी का हिस्सा खरीदती है। लीवरेज्ड बायआउट में, एक कंपनी का प्रबंधन समूह दूसरी कंपनी के उत्पाद का अधिग्रहण करना चाहता है।',
          'Benefits of Venture Capital Fund': 'वेंचर कैपिटल फंड के लाभ',
          'VentureTxt3': '> वीसीएफ यह सुनिश्चित करता है कि वेंचर कैपिटल (वीसीएफ में प्रदान किया गया धन) का उपयोग केवल उच्च विकास की संभावना वाले प्रोजेक्ट्स, स्टार्टअप्स के लिए किया जाता है। इसलिए, उच्च जोखिम के बावजूद, उनके पास निवेश पर अत्यधिक उच्च प्रतिफल देने की क्षमता है।'
              '\n\n> विकास के शुरुआती चरणों में किसी भी कंपनी के लिए, नेटवर्किंग महत्वपूर्ण है, और यह वीसीएफ निवेशकों का सबसे बड़ा फायदा है। प्रभावशाली, अमीर, बहुत सारे कनेक्ट वाले निवेशक इन स्टार्टअप्स को बढ़ावा देते हैं, उनकी दृश्यता, एक्सपोजर को बढ़ाते हैं, सकारात्मक मार्केटिंग के माध्यम से उन्हें बढ़ने में मदद करते हैं।'
              '\n\n> वीसीएफ में निवेशक अक्सर ज्ञान और अनुभव लाते हैं, जो कंपनियों या स्टार्टअप को उनकी दृष्टि और लक्ष्य के अनुसार बढ़ने में मदद करते हैं। वीसीएफ के ये परिष्कृत निवेशक कभी-कभी नए उत्पादों, सेवाओं को विकसित करने में मदद करके कंपनी के विकास में योगदान दे सकते हैं, और दक्षता बढ़ाने के लिए नवीनतम, उन्नत तकनीकों को हासिल करने में भी उनकी मदद कर सकते हैं।'
              '\n\n> जिन कंपनियों में वे निवेश करते हैं, उन पर वीसीएफ की बहुत पकड़ होती है, और इसलिए वे निर्णयों को प्रभावित कर सकते हैं।'
              '\n\n> वीसीएफ के पास एक ही समय में कई परियोजनाओं में निवेश करने की क्षमता भी है। यह उस उच्च जोखिम को कम कर सकता है जो आमतौर पर इस श्रेणी में निवेश करने में शामिल होता है। कई स्टार्टअप्स में से, कम से कम एक बड़े पैमाने पर विकास कर सकता है, जिससे उन्हें अपने पूरे निवेश को कवर करने के लिए उच्च रिटर्न मिलता है।',
          'Disadvantages of Venture Capital Fund': 'वेंचर कैपिटल फंड के नुकसान',
          'VentureTxt4':
              "प्रक्रिया लंबी और जटिल है, और इसमें उच्च जोखिम है। निवेश लंबी अवधि के लिए होते हैं, जिसका अर्थ है कि किए गए मुनाफे को बहुत लंबे समय में महसूस किया जाता है।",
          'एक संभावित निवेशक के रूप में, वीसीएफ में निवेश करने के लिए आपको क्या देखना चाहिए?':
              'एक संभावित निवेशक के रूप में, वीसीएफ में निवेश करने के लिए आपको क्या देखना चाहिए?',
          "VentureTxt5":
              '> यह हमेशा एक अच्छा विचार है कि ऐसे संभावित स्टार्टअप्स की तलाश की जाए जिनके पास एक बहुत मजबूत प्रबंधन टीम हो, जिनके पास अद्वितीय/अद्वितीय विचार या उत्पाद हों और इसके लिए एक अच्छा संभावित बाजार हो। '
                  '\n\n> फंड की निवेश संरचना और रणनीति'
                  '\n\n> उद्योग जिनमें यह निवेश कर रहा है। यह उन उद्योगों में निवेश करने का एक स्मार्ट विचार है जिनसे आप परिचित हैं, इस प्रकार विकास सुनिश्चित करने और निवेश पर उच्च प्रतिफल प्राप्त करने के लिए सलाह दे सकते हैं, पोषण कर सकते हैं।'
                  '\n\n> वीसीएफ द्वारा वित्तपोषित स्टार्टअप्स'
                  '\n\n> न्यूनतम लॉक इन अवधि',
          'How Does a VC Differ from an Angel Investor?':
              'एक वीसी एक एन्जिल निवेशक से कैसे भिन्न होता है?',
          'AngelTxt1':
              "जबकि दोनों स्टार्टअप कंपनियों को पैसा प्रदान करते हैं, उद्यम पूंजीपति आम तौर पर पेशेवर निवेशक होते हैं जो नई कंपनियों के व्यापक पोर्टफोलियो में निवेश करते हैं और मार्गदर्शन प्रदान करते हैं और नई फर्म की मदद करने के लिए अपने पेशेवर नेटवर्क का लाभ उठाते हैं। दूसरी ओर, एंजेल निवेशक, अमीर व्यक्ति होने के लिए जो एक शौक या साइड-प्रोजेक्ट के रूप में नई कंपनियों में अधिक निवेश करना पसंद करते हैं और समान विशेषज्ञ मार्गदर्शन प्रदान नहीं कर सकते हैं। एंजेल निवेशक भी आमतौर पर पहले निवेश करते हैं और उसके बाद उद्यम पूंजीपति आते हैं। वेंचर कैपिटल फंड में निवेश करने पर ध्यान केंद्रित किया जाता है। व्यवसाय के बाद के चरणों में, एंजेल निवेशक व्यवसाय के प्रारंभिक चरणों में बहुत आवश्यक सहायता प्रदान करता है।",
          'Who can qualify as an angel investor?':
              'कौन एक एंजेल निवेशक के रूप में योग्य हो सकता है?',
          'AngelTxt2':
              "SEBI नियमों के अनुसार, एंजेल निवेशक उस व्यक्ति को भी हो सकता है जो एक एंजेल फंड में निवेश करना चाहता है और निम्नलिखित में से कम से कम एक शर्त पूरी करता है",
          'AngelTxt3':
              "किसी भी व्यक्तिगत निवेशक को शामिल हो सकता है जिसके पास उसके मूल आवास की मूल्य को छोड़कर कम से कम दो करोड़ रुपये के साक्षम संपत्ति होती है, और जो:",
          'AngelTxt4':
              "	एक पूर्व अनुभव है जो शुरूआती या उभरती हुई या प्रारंभिक चरण के उद्यमों में निवेश करने के अनुभव के साथ है, या",
          'AngelTxt5':
              "	एक धारावाहिक उद्यमी के रूप में अनुभव है (जो एक से अधिक स्टार्टअप वेंचरों को प्रचारित या सह-प्रचारित कर चुका है), या",
          'AngelTxt6':
              "	कम से कम दस वर्षों के अनुभव के साथ एक वरिष्ठ प्रबंधन पेशेवर है;",
          'AngelTxt7':
              "	एक कॉर्पोरेट बॉडी जिसकी कुल अपराधी मूल्य कम से कम दस करोड़ रुपये हैं",
          'AngelTxt8':
              "इन नियमों के तहत पंजीकृत एक एआईएफ या SEBI (वेंचर कैपिटल फंड) विनियमों, 1996 के तहत पंजीकृत एक वीसीएफ। ",
          'How much money do you need to be an angel fund investor in India?':
              'भारत में एक एंजेल फंड निवेशक बनने के लिए आपको कितना पैसा चाहिए?',
          'AngelTxt9':
              "एक एंजेल निवेशक को एंजेल फंड के माध्यम से अपनी पसंद के स्टार्टअप्स में 5 वर्षों में कम से कम 25 लाख रुपये निवेश करने की आवश्यकता होती है।",
          'Benefits of Angel Investing': 'एंजेल निवेश के लाभ',
          'AngelTxt10': "- व्यवसाय संबंधी समझौते और अनुबंध अधिक लचीले होते हैं। "
              "\n\n- दस्तावेज़ी प्रक्रियाएँ पारंपरिक निवेशों से कम जटिल होती हैं।"
              "\n\n- एंजेल निवेशक स्टार्टअप के लिए मूल्यवान सलाहकार और सलाहकार बन सकते हैं।",
          'AngelTxt11': 'एंजेल फंड अन्य एआईएफ से कैसे अलग होता है?',
          'AngelTxt12': "निम्नलिखित दो श्रेणियों के बीच अंतर के बिंदु हैं:"
              "\n\n1. कॉर्पस: एंजल फंड में कम से कम 5 करोड़ का कॉर्पस होना चाहिए। अन्य एआईएफ के लिए 20 करोड़ का कॉर्पस होना आवश्यक है।"
              "\n\n2. एंजेल फंड्स के लिए एकल निवेशक के लिए न्यूनतम निवेश सीमा रु. 25 लाख निर्धारित की गई है, अन्य एआईएफ के विपरीत जहां सीमा रु. 1 करोड़ निर्धारित की गई है"
              "\n\n3. एंजल फंड में प्रायोजक/प्रबंधक का निरंतर हित होना आवश्यक है, जो दो में से कम होगा; कॉर्पस का 2.5% या रु. 50 लाख। हालांकि, अन्य एआईएफ के मामले में, यह आवश्यकता एक तरह से है उच्च।",
          'Key Features': 'प्रमुख विशेषताऐं',
          'AngelTxt14': "एआईएफ विनियमों के तहत एंजेल फंड स्थापित किए जा सकते हैं और उनकी निम्नलिखित प्रमुख विशेषताएं होंगी:"
              "\n\n1. ऐसे फंड अधिकतम 200 निवेशकों से निवेश स्वीकार कर सकते हैं, पहले यह 49 निवेशकों तक सीमित था।"
              "\n\n2. वेंचर कैपिटल अंडरटेकिंग में एंजेल फंड द्वारा निवेश 25 लाख रुपये से कम नहीं होगा और 10 करोड़ रुपये से अधिक नहीं होगा।"
              "\n\n3. एंजेल निवेशक के लिए आवश्यक लॉक इन अवधि 3 वर्ष से घटाकर एक वर्ष कर दी गई है।"
              "\n\n4. AIF को पिछले 5 वर्षों में निगमित संगठनों में निवेश करने की अनुमति है। पहले, यह निगमन सीमा 3 वर्ष निर्धारित की गई थी।"
              "\n\n5. बाजार नियामक सेबी के अनुसार, एंजल फंड की प्रत्येक योजना अपने स्वयं के निवेशकों के साथ एक स्वतंत्र निवेश वाहन है। एंजेल फंड में निवेशकों के पास निवेश योजनाओं में चुनिंदा रूप से भाग लेने का विकल्प होता है क्योंकि प्रत्येक निवेश एक अलग होता है। इसके अलावा, निवेशकों को केवल उन विशिष्ट योजनाओं का निवेशक माना जाएगा, जिनके लिए उन्होंने मंजूरी दी है।"
              "\n\n6. ऐंजल फ़ंड अपने कुल निवेश का 25% से अधिक एक उद्यम पूंजी उपक्रम में अपनी सभी योजनाओं के तहत निवेश नहीं करेंगे।"
              '\n\n7. एक एंजल फंड भारत के बाहर निगमित कंपनियों की प्रतिभूतियों में ऐसी शर्तों या दिशानिर्देशों के अधीन निवेश कर सकता है जो भारतीय रिजर्व बैंक और बोर्ड द्वारा निर्धारित या जारी किए जा सकते हैं।',
          "HDFC AMC Select AIF FOF – I":
              "एचडीएफसी एएमसी सिलेक्ट एआईएफ एफओएफ - आई",
          "Edelweiss Discovery Fund": "एडलवाइस डिस्कवरी फंड",
          "Private Equity Fund Deals": "प्राइवेट इक्विटी फंड सौदों",
          "5 Years": "5 साल",
          "Invest in ~ 15 VC/PE funds.Up to 50% in venture capital funds and balance in private equity funds \nMaximum exposure to co-investment opportunities will be capped at 30% of the corpus":
              "~ 15 वीसी/पीई फंड में निवेश करें। वेंचर कैपिटल फंड में 50% तक और निजी इक्विटी फंड में शेष \nसह-निवेश अवसरों के लिए अधिकतम एक्सपोजर को कॉर्पस के 30% पर कैप किया जाएगा",
          "HDFC AMC": "एचडीएफसी एएमसी",
          "11 + 1 + 1 years": "11 + 1 + 1 वर्ष",
          "₹ 1,500 crore + green shoe of up to ₹ 1,500 crore":
              "₹ 1,500 करोड़ + तक ₹ 1,500 करोड़ का हरी जूता",
          "10% of Capital Commitment raised": "पूंजी वचन के 10% जुटाए गए",
          "1 Crore": "1 करोड़",
          "2.5% p.a. Management Fee & 20% Carry with full catchup":
              "2.5% प्रति वर्ष प्रबंधन शुल्क और पूर्ण कैचअप के साथ 20% कैरी",
          "XIRR of 10% (pre-tax) on Capital Contributions received":
              "प्राप्त पूंजी योगदान पर 10% के XIRR (पूर्व कर)",
          "Invest in mid-stage businesses that are leaders of emerging sectors":
              "उभरते क्षेत्रों के नेता मध्य चरण व्यवसायों में निवेश करें",
          "Ashish Agarwal": "आशीष अग्रवाल",
          "Fund Manager has 16 years experience in mid stage PE.":
              "फंड प्रबंधक के पास मध्य चरण पीई में 16 वर्ष का अनुभव है।",
          "Edelweiss Asset Management Limited":
              "एडलवाइस एसेट मैनेजमेंट लिमिटेड",
          "Sept-2022": "सितंबर-2022",
          "24 months from the initial close": "प्रारंभिक बंद के 24 महीने",
          "30M from Initial Closing": "प्रारंभिक बंद से 30 एम",
          "2.5% of the Fund size or INR 5 crores, whichever is lower":
              "फंड का आकार 2.5% या INR 5 करोड़, जो भी कम हो",
          "Entry Fee - अनुमान राशि के उपरांत तकनीकी शुल्क - क्लास A1 रुपये 1 करोड़ और रुपये 5 करोड़ का वचन, क्लास A2 => रुपये 5 करोड़ का वचन और < रुपये 10 करोड़ का वचन, क्लास A3 => रुपये 10 करोड़ \nप्रदर्शन शुल्क 20% - 10% के हर्डल दर से ऊपर":
              "Entry Fee - अनुमान राशि के उपरांत तकनीकी शुल्क - क्लास A1 रुपये 1 करोड़ और रुपये 5 करोड़ का वचन, क्लास A2 => रुपये 5 करोड़ का वचन और < रुपये 10 करोड़ का वचन, क्लास A3 => रुपये 10 करोड़ \nप्रदर्शन शुल्क 20% - 10% के हर्डल दर से ऊपर",
          "Consumer brands and Tech-enabled B2B services":
              "उपभोक्ता ब्रांड और टेक-एनेबल्ड बी2बी सेवाएं",
          "Know. Learn. Invest.": "जानें। सीखिए। निवेश करें।",
          "Create your customized investment world.":
              "अपनी अनुकूलित निवेश दुनिया बनाएं।",
          "Investing simplified. One platform to choose from":
              "निवेश सरलीकृत। चुनने के लिए एक मंच",
          "One platform, multiple options. Simplified for you.":
              "एक मंच, कई विकल्प। आपके लिए सरलीकृत।",
          "Easy to use online platform for Alternative investments":
              "वैकल्पिक निवेश के लिए ऑनलाइन प्लेटफॉर्म का उपयोग करना आसान",
          'Meet Our Founder': 'हमारे संस्थापक से मिलें',
          "FounderDesc":
              'उनके पास बैंकिंग और वित्तीय बाजारों में 18+ साल का अनुभव है। अपनी उद्यमशीलता की यात्रा शुरू करने से पहले, उन्होंने एचएसबीसी बैंक, कोटक सिक्योरिटीज, रेलिगेयर मैक्वेरी प्राइवेट वेल्थ और अन्य के साथ कॉर्पोरेट जगत में काम किया था। उन्होंने MBA और CFP किया है और उन्हें वित्तीय उद्योग में गहरा अनुभव है।',
          'What is the taxation on the secondary sale of AIF units by investors?':
              'निवेशकों द्वारा एआईएफ इकाइयों की द्वितीयक बिक्री पर कराधान क्या है?',
          'AlternativeFAQ15':
              "जब एक निवेशक किसी अन्य निवेशक को इकाइयों या साझेदारी हितों के हस्तांतरण द्वारा एआईएफ से बाहर निकलता है (इस लेनदेन को 'द्वितीयक हस्तांतरण' कहा जाता है), इकाइयों की बिक्री पर लाभ सीधे निवेशकों के हाथ में कर योग्य हो सकता है। द्वितीयक अंतरण के दौरान एआईएफ इकाइयों की बिक्री पर लाभ की करदेयता इकाइयों की होल्डिंग अवधि पर निर्भर करेगी। यदि होल्डिंग अवधि 36 महीने से अधिक है, तो बिक्री को दीर्घकालिक पूंजीगत लाभ के रूप में वर्गीकृत किया जाएगा और इंडेक्सेशन के साथ 20% कर लगाया जाएगा। अगर होल्डिंग की अवधि 36 महीने से कम है, तो इसे शॉर्ट-टर्म कैपिटल गेन माना जाएगा और लागू स्लैब दरों पर टैक्स लगाया जाएगा।",
          'Revenue Based Financing FAQ': 'राजस्व आधारित वित्तपोषण',
          'How does revenue-based financing work?':
              'राजस्व आधारित वित्तपोषण कैसे काम करता है?',
          'In a revenue-based financing arrangement, the investor provides funding to the company in exchange for a percentage of its revenue. The percentage is usually in the range of 1% to 10%, depending on the size of the investment and the risk level of the company. The company then makes regular payments to the investor based on its revenue until the predetermined amount has been paid back, plus a return on the investment.':
              'राजस्व आधारित वित्तपोषण व्यवस्था में, निवेशक अपने राजस्व के प्रतिशत के बदले में कंपनी को धन उपलब्ध कराता है। निवेश के आकार और कंपनी के जोखिम स्तर के आधार पर प्रतिशत आमतौर पर 1% से 10% की सीमा में होता है। कंपनी तब अपने राजस्व के आधार पर निवेशक को नियमित भुगतान करती है जब तक कि पूर्व निर्धारित राशि का भुगतान नहीं किया जाता है, साथ ही निवेश पर रिटर्न भी मिलता है।',
          'How does revenue-based financing differ from traditional financing?':
              'राजस्व आधारित वित्तपोषण पारंपरिक वित्तपोषण से कैसे भिन्न है?',
          'Revenue-based financing differs from traditional financing in that it is based on a percentage of future revenue rather than taking on debt or giving up equity. It also offers more flexible repayment terms and can be a better fit for companies with limited assets or a non-traditional business model.':
              'राजस्व आधारित वित्त पोषण पारंपरिक वित्त पोषण से अलग है क्योंकि यह ऋण लेने या इक्विटी छोड़ने के बजाय भविष्य के राजस्व के प्रतिशत पर आधारित है। यह अधिक लचीली चुकौती शर्तें भी प्रदान करता है और सीमित संपत्ति या गैर-पारंपरिक व्यापार मॉडल वाली कंपनियों के लिए बेहतर हो सकता है।',
          'How can NRIs invest?': 'एनआरआई कैसे निवेश कर सकते हैं?',
          'Non-Resident investors can invest through an NRO or NRE Account, although the returns and sale proceeds will be credited to their NRO account.':
              'अनिवासी निवेशक एनआरओ या एनआरई खाते के माध्यम से निवेश कर सकते हैं, हालांकि रिटर्न और बिक्री आय उनके एनआरओ खाते में जमा की जाएगी।',
          'What are the risks of RBF for investors?':
              'निवेशकों के लिए आरबीएफ के जोखिम क्या हैं?',
          "As with any investment, there are risks associated with RBF. These include the possibility of the company not generating enough revenue to repay the investment and the potential for changes in the market or industry that could negatively impact the company&#39;s revenue. Additionally, there may be challenges in accurately tracking and verifying the company's revenue.":
              "जैसा कि किसी भी निवेश के साथ होता है, आरबीएफ से जुड़े जोखिम होते हैं। इनमें कंपनी द्वारा निवेश को चुकाने के लिए पर्याप्त राजस्व उत्पन्न नहीं करने की संभावना और बाजार या उद्योग में बदलाव की संभावना शामिल है जो कंपनी के राजस्व पर नकारात्मक प्रभाव डाल सकती है। इसके अतिरिक्त, कंपनी के राजस्व को सटीक रूप से ट्रैक करने और सत्यापित करने में भी चुनौतियाँ हो सकती हैं।",
          'What happens if a company fails to repay an RBF investment?':
              'अगर कोई कंपनी आरबीएफ निवेश चुकाने में विफल रहती है तो क्या होता है?',
          "If a company fails to repay an RBF investment, the investor may have the right to take legal action to ecover the outstanding amount. However, the investor's ability to recover the investment may depend on the terms of the agreement and the assets that the company has available to repay the investment.":
              "अगर कोई कंपनी आरबीएफ निवेश चुकाने में विफल रहती है, तो निवेशक को बकाया राशि की वसूली के लिए कानूनी कार्रवाई करने का अधिकार हो सकता है। हालांकि, निवेशक की निवेश की वसूली की क्षमता समझौते की शर्तों और कंपनी की संपत्ति पर निर्भर हो सकती है। निवेश चुकाने के लिए उपलब्ध है।",
          'Who invests in revenue-based financing?':
              'राजस्व आधारित वित्तपोषण में कौन निवेश करता है?',
          'Revenue-based financing can be provided by angel investors, venture capital firms, and other financial institutions. Any Indian citizen, HUF, Company, and NRI can invest in an RBF opportunity.':
              'राजस्व आधारित वित्तपोषण एंजेल निवेशकों, उद्यम पूंजी फर्मों और अन्य वित्तीय संस्थानों द्वारा प्रदान किया जा सकता है। कोई भी भारतीय नागरिक, एचयूएफ, कंपनी और एनआरआई आरबीएफ अवसर में निवेश कर सकते हैं।',
          'What will be the tax implications?': 'कर प्रभाव क्या होगा?',
          'The interest earned on revenue-based financing investments is taxable under the head “Income from Other Sources&quot;. The applicable tax rate depends on the investor&#39;s income tax slab. TDS of 10% is applicable on the interest component of payouts.':
              'राजस्व आधारित वित्तपोषण निवेश पर अर्जित ब्याज "अन्य स्रोतों से आय" शीर्षक के तहत कर योग्य है। लागू कर की दर निवेशक के आयकर स्लैब पर निर्भर करती है। भुगतान के ब्याज घटक पर 10% का टीडीएस लागू है।',
          'High Yield Finance FAQ': 'हाई यील्ड फाइनेंस',
          'How does high yield fixed income differ from investment-grade fixed income?':
              'उच्च प्रतिफल निश्चित आय निवेश-श्रेणी की निश्चित आय से कैसे भिन्न होती है?',
          'High yield fixed income is issued by riskier companies with lower credit ratings, while investment- grade fixed income is issued by more creditworthy companies. High yield fixed income provides higher yields but also higher risk.':
              'उच्च उपज निश्चित आय जोखिम वाली कंपनियों द्वारा कम क्रेडिट रेटिंग के साथ जारी की जाती है, जबकि निवेश-ग्रेड निश्चित आय अधिक क्रेडिट योग्य कंपनियों द्वारा जारी की जाती है। उच्च उपज निश्चित आय उच्च उपज प्रदान करती है लेकिन उच्च जोखिम भी।',
          'What types of securities are considered high yield fixed income?':
              'किस प्रकार की प्रतिभूतियों को उच्च प्रतिफल निश्चित आय माना जाता है?',
          'High yield fixed income securities include corporate bonds, municipal bonds, and asset-backed securities, among others. In the majority of cases the underlying instrument is a Non-Convertible Debenture (NCD)':
              'उच्च उपज निश्चित आय प्रतिभूतियों में कॉर्पोरेट बॉन्ड, नगरपालिका बांड और संपत्ति-समर्थित प्रतिभूतियां शामिल हैं। अधिकांश मामलों में अंतर्निहित लिखत एक गैर-परिवर्तनीय डिबेंचर (एनसीडी) होता है।',
          'Is it possible for the investor to exit their investment before the maturity date?':
              'क्या निवेशक के लिए परिपक्वता तिथि से पहले अपने निवेश से बाहर निकलना संभव है?',
          'The investment is in the form of NCD, which can be transferred to another person provided one is able to find the buyer.':
              'निवेश एनसीडी के रूप में है, जिसे किसी अन्य व्यक्ति को हस्तांतरित किया जा सकता है, बशर्ते कोई खरीदार खोजने में सक्षम हो।',
          'Who can invest in high yielding NCDs?':
              'उच्च प्रतिफल वाले एनसीडी में कौन निवेश कर सकता है?',
          'Resident investors and unincorporated bodies are eligible to invest in NCDs, while NRIs may invest in NCDs if the rules of the issuing company permit them to do so. It is rare for companies in India to allow NRIs to invest in a public issue NCD.':
              'निवासी निवेशक और अनिगमित निकाय एनसीडी में निवेश करने के लिए पात्र हैं, जबकि एनआरआई एनसीडी में निवेश कर सकते हैं यदि जारी करने वाली कंपनी के नियम उन्हें ऐसा करने की अनुमति देते हैं। भारत में कंपनियों के लिए अनिवासी भारतीयों को सार्वजनिक निर्गम एनसीडी में निवेश करने की अनुमति देना दुर्लभ है।',
          'How will the investor receive repayments?':
              'निवेशक को चुकौती कैसे मिलेगी?',
          'Repayment to the investor will be made directly to the bank account linked to their demat account.':
              'निवेशक को चुकौती सीधे उनके डीमैट खाते से जुड़े बैंक खाते में की जाएगी।',
          'What is the course of action in case of default in NCD investments?':
              'एनसीडी निवेश में चूक के मामले में कार्रवाई का तरीका क्या है?',
          'In such a scenario, the debenture trustee, who acts in the best interest of the debenture holders (investors), will take necessary measures to ensure that the issuer (borrower) rectifies the default and/or enforces security to recover the invested amount.':
              'ऐसे परिदृश्य में, डिबेंचर ट्रस्टी, जो डिबेंचर धारकों (निवेशकों) के सर्वोत्तम हित में कार्य करता है, यह सुनिश्चित करने के लिए आवश्यक उपाय करेगा कि जारीकर्ता (उधारकर्ता) निवेशित राशि की वसूली के लिए डिफ़ॉल्ट और/या सुरक्षा लागू करता है। ',
          'Does the borrower deduct TDS on a payout in NCD investments, and what is the applicable rate?':
              'क्या उधारकर्ता एनसीडी निवेशों में भुगतान पर टीडीएस काटता है, और लागू दर क्या है?',
          "Yes, TDS is applicable on the interest component of the payout, and the borrower deducts 10% TDS at the source. The deducted TDS amount will be automatically reflected in the investor's form 26AS.":
              "हां, टीडीएस भुगतान के ब्याज घटक पर लागू होता है, और उधारकर्ता स्रोत पर 10% टीडीएस काटता है। कटौती की गई टीडीएस राशि स्वचालित रूप से निवेशक के फॉर्म 26AS में दिखाई देगी।",
          'Asset backed leasing FAQ': 'एसेट समर्थित लीजिंग',
          'How does lease-based financing work?':
              'पट्टा आधारित वित्तपोषण कैसे काम करता है?',
          'In a lease-based financing arrangement, the leasing company purchases the asset and leases it to the company in exchange for regular lease payments. The lease payments typically include a finance charge that covers the cost of the asset plus interest, and the lease term is usually shorter than the expected useful life of the asset.':
              'लीज-आधारित वित्तपोषण व्यवस्था में, लीजिंग कंपनी संपत्ति खरीदती है और इसे नियमित लीज भुगतान के बदले में कंपनी को पट्टे पर देती है। पट्टे के भुगतान में आम तौर पर एक वित्त शुल्क शामिल होता है जो संपत्ति की लागत और ब्याज को कवर करता है, और पट्टे की अवधि आमतौर पर संपत्ति के अपेक्षित उपयोगी जीवन से कम होती है।',
          'How does lease-based financing differ from traditional financing?':
              'पट्टा-आधारित वित्तपोषण पारंपरिक वित्तपोषण से कैसे भिन्न है?',
          'Lease-based financing is distinct from traditional financing as the company leases the asset instead of owning it. It requires less upfront capital and provides greater equipment flexibility. However, it can be more expensive overall due to finance charges and interest payments.':
              'लीज-आधारित वित्तपोषण पारंपरिक वित्तपोषण से अलग है क्योंकि कंपनी संपत्ति के मालिक होने के बजाय इसे पट्टे पर देती है। इसके लिए कम अग्रिम पूंजी की आवश्यकता होती है और यह अधिक उपकरण लचीलापन प्रदान करता है। हालांकि, वित्त शुल्क और ब्याज भुगतान के कारण कुल मिलाकर यह अधिक महंगा हो सकता है।',
          'Who provides lease-based financing?':
              'पट्टा आधारित वित्तपोषण कौन प्रदान करता है?',
          'Lease-based financing can be provided by banks, leasing companies, and other financial institutions.':
              'लीज-आधारित वित्तपोषण बैंकों, लीजिंग कंपनियों और अन्य वित्तीय संस्थानों द्वारा प्रदान किया जा सकता है।',
          'What types of assets can be leased through lease-based financing?':
              'किस प्रकार की संपत्तियों को लीज़-आधारित वित्तपोषण के माध्यम से पट्टे पर दिया जा सकता है?',
          'Almost any type of asset can be leased through lease-based financing, including equipment, machinery, vehicles, and real estate.':
              'उपकरण, मशीनरी, वाहन और रियल एस्टेट सहित पट्टे पर आधारित वित्तपोषण के माध्यम से लगभग किसी भी प्रकार की संपत्ति को पट्टे पर दिया जा सकता है।',
          'Is lease-based financing a secured investment?':
              'क्या पट्टा-आधारित वित्तपोषण एक सुरक्षित निवेश है?',
          'Lease-based financing is considered secure as it is backed by assets as collateral.':
              'लीज-आधारित वित्तपोषण को सुरक्षित माना जाता है क्योंकि यह संपत्ति द्वारा संपार्श्विक के रूप में समर्थित है।',
          'Is ownership of the asset preserved in lease-based financing?':
              'क्या पट्टे पर आधारित वित्तपोषण में संपत्ति का स्वामित्व संरक्षित है?',
          'Yes. the lessor (person leasing) will transfer all risk and rewards associated with ownership of the asset to the lessee (borrower) but without transferring the asset’s ownership.':
              'हाँ। पट्टेदार (पट्टे पर देने वाला व्यक्ति) संपत्ति के स्वामित्व से जुड़े सभी जोखिमों और पुरस्कारों को पट्टेदार (उधारकर्ता) को स्थानांतरित कर देगा, लेकिन संपत्ति के स्वामित्व को स्थानांतरित किए बिना।',
          'Is there a default risk with lease-backed financing?':
              'क्या पट्टा-समर्थित वित्त पोषण के साथ कोई डिफ़ॉल्ट जोखिम है?',
          'In the event that a company fails to repay a lease rental investment, the investor may have the right to take legal action to recover the outstanding amount. While there is no 100% guarantee, most platforms have safeguards in place for reclaiming the asset and for releasing the same.':
              'अगर कोई कंपनी लीज रेंटल निवेश चुकाने में विफल रहती है, तो निवेशक को बकाया राशि की वसूली के लिए कानूनी कार्रवाई करने का अधिकार हो सकता है। जबकि कोई 100% गारंटी नहीं है, अधिकांश प्लेटफार्मों में संपत्ति को पुनः प्राप्त करने और उसे जारी करने के लिए सुरक्षा उपाय हैं।',
          'The rentals earned from lease-based financing investments are taxable under the head “Income from Other Sources&quot;. The applicable tax rate depends on the investor&#39;s income tax slab.':
              'लीज-आधारित वित्तपोषण निवेश से अर्जित किराया "अन्य स्रोतों से आय" शीर्षक के तहत कर योग्य है। लागू कर की दर निवेशक के आयकर स्लैब पर निर्भर करती है।',
          'Venture Debt FAQ': 'उद्यम ऋण अक्सर पूछे जाने वाले प्रश्न',
          'How does venture debt work?': 'उद्यम ऋण कैसे काम करता है?',
          "Venture debt is typically available to startups and high-growth companies that have already raised equity financing from venture capitalists or angel investors. The lender may evaluate the company's financials, business plan, and growth prospects before approving the loan. In exchange for the loan, the lender receives interest payments and other fees.":
              "उद्यम ऋण आम तौर पर स्टार्टअप और उच्च विकास वाली कंपनियों के लिए उपलब्ध है, जिन्होंने पहले ही उद्यम पूंजीपतियों या देवदूत निवेशकों से इक्विटी वित्तपोषण जुटा लिया है। ऋणदाता ऋण स्वीकृत करने से पहले कंपनी की वित्तीय, व्यावसायिक योजना और विकास की संभावनाओं का मूल्यांकन कर सकता है। ऋण के बदले में , ऋणदाता ब्याज भुगतान और अन्य शुल्क प्राप्त करता है।",
          'Why do companies need Venture Debt?':
              'कंपनियों को उद्यम ऋण की आवश्यकता क्यों है?',
          'Venture Debt offers companies a flexible way to raise capital while avoiding the dilution of ownership that can come with equity financing. This allows companies to maintain greater control over their operations and future growth.':
              'उद्यम ऋण कंपनियों को इक्विटी वित्तपोषण के साथ आने वाले स्वामित्व के कमजोर पड़ने से बचते हुए पूंजी जुटाने का एक लचीला तरीका प्रदान करता है। यह कंपनियों को अपने संचालन और भविष्य के विकास पर अधिक नियंत्रण बनाए रखने की अनुमति देता है।',
          'Who facilitates Venture debt?': 'उद्यम ऋण की सुविधा कौन देता है?',
          'Venture debt is primarily facilitated by specialized lenders that have a better understanding of the unique needs and risks of startups, rather than traditional banks.':
              'उद्यम ऋण मुख्य रूप से विशिष्ट उधारदाताओं द्वारा सुगम किया जाता है, जिन्हें पारंपरिक बैंकों के बजाय स्टार्टअप्स की अनूठी जरूरतों और जोखिमों की बेहतर समझ होती है।',
          'The investor will receive which instrument?':
              'निवेशक कौन सा साधन प्राप्त होगा?',
          'Investments in Venture Debt may be made through debt instruments such as non-convertible debentures (NCDs), bonds, or commercial paper.':
              'उद्यम ऋण में निवेश गैर-परिवर्तनीय डिबेंचर (एनसीडी), बांड, या वाणिज्यिक पत्र जैसे ऋण उपकरणों के माध्यम से किया जा सकता है।',
          'The interest earned will be taxed as per the investor&#39;s applicable tax slab.':
              'अर्जित ब्याज पर निवेशक के लागू कर स्लैब के अनुसार कर लगाया जाएगा।',
          'What are the risks of venture debt?': 'उद्यम ऋण के जोखिम क्या हैं?',
          "Startups and high-growth companies are more prone to failure, which makes venture debt riskier than other forms of debt financing. The lender may charge higher interest rates and fees to compensate for the higher risk. In case of loan default, the lender may seize the company's assets, which can have a negative impact on its operations.":
              "स्टार्टअप और उच्च विकास वाली कंपनियां विफलता के लिए अधिक प्रवण हैं, जो ऋण वित्तपोषण के अन्य रूपों की तुलना में उद्यम ऋण को जोखिम भरा बनाता है। ऋणदाता उच्च जोखिम की भरपाई के लिए उच्च ब्याज दर और शुल्क ले सकता है। ऋण चूक के मामले में, ऋणदाता हो सकता है कंपनी की संपत्तियों को जब्त कर लें, जिसका इसके संचालन पर नकारात्मक प्रभाव पड़ सकता है।",
        },
      };
}
