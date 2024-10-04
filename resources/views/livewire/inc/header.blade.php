<div class="text-white min-w-sreen  bg-navCor   flex justify-center fixed w-full z-10 ">
    @php
    $siteSetting = App\Models\SiteSetting::first();
    @endphp
    <div class="flex justify-center  max-w-[1440px] w-[1440px]   ">
        <nav class="height-nav max-[500px]:px-5 min-[500px]:px-[80px] flex  items-center justify-between   lg:max-w-[1440px] w-full z-10 h-[90px] max-sm:h-[79px] "
            aria-label="Global">
            <div class="flex lg:flex-1 text-white flex-row gap-3 "><span class="-m-1.5 p-1.5 flex items-center"><a
                        href="/" wire:navigate><img alt="Tok" loading="lazy" width="62" height="50" decoding="async"
                            data-nimg="1" style="color:transparent" srcset="/assets_occo/avt1 (1).webp"
                            src="/assets_occo/avt1 (1).webp"></a></span>
                <span
                    class="flex items-center h-[49px] w-[85px] text-xl bg-gradient-to-r from-yellow-500 to-yellow-400 text-transparent bg-clip-text font-bold">
                    <a href="/" wire:navigate><img alt="Brand" loading="lazy" width="2058" height="515" decoding="async"
                            data-nimg="1" class="__className_7a2b7c text-[32px] max-lg:text-[20px]"
                            style="color:transparent" srcset="/assets_occo/brand.webp"
                            src="/assets_occo/brand.webp"></a>
                </span>
            </div>
            <div class="flex lg:hidden flex-row gap-5 items-center   ">
                <div class="h-[90px] w-full  flex items-center max-[205px]:hidden">
                    @if($siteSetting->enable_upgrade)
                    <button
                    class="bg-gradient-to-r from-p_1 to-p_2 text-white font-semibold rounded-full p-[1.5px]  w-full min-w-[110px] h-[36px] "><span
                        class="flex w-full justify-center bg-navCor text-white rounded-full p-2 px-5"><a
                            class="text-[16px] max-lg:text-[10px]" href="/upgrade">
                            <!-- -->Nâng cấp VIP
                        </a></span></button>
                @endif
                
                        
                        </div>
                <button type="button"
                    class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-white-700 dropdown"><span>
                        <div>
                            <div class="drawer "><input id="my-drawer" type="checkbox" class="drawer-toggle"
                                    readOnly="" />
                                <div class="drawer-content  flex justify-end"><label for="my-drawer"
                                        class="btn btn-primary drawer-button bg-navCor border-0  px-0"><svg
                                            class="h-[35px] w-[35px]  " fill="none" viewBox="0 0 24 24" stroke="white"
                                            aria-hidden="true">
                                            <path d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"></path>
                                        </svg></label></div>
                                <div class="drawer-side "><label for="my-drawer" aria-label="close sidebar"
                                        class="drawer-overlay"></label>
                                    <ul class="menu p-4 w-80 min-h-full  bg-navCor text-white  ">
                                        <div class="flex flex-row gap-3"><span class="-m-1.5 p-1.5"><a href="/"
                                                    wire:navigate><img alt="Tok" loading="lazy" width="62" height="50"
                                                        decoding="async" data-nimg="1" style="color:transparent"
                                                        srcset="/assets_occo/avt1.webp" src="/assets_occo/avt1.webp" />
                                                    <!-- --> </a></span>
                                            <span
                                                class="flex items-center h-[49px] w-[50px] text-xl bg-gradient-to-r from-yellow-600 to-yellow-500 text-transparent bg-clip-text font-bold"><a
                                                    class="__className_7a2b7c text-[32px] max-lg:text-[20px]" href="/"
                                                    wire:navigate>Occo</a></span>
                                        </div>
                                        <li class="pt-3">
                                            <a style="color: {{ request()->is('/') ? '#169775' : 'white' }}"
                                                class="font-bold" href="/" wire:navigate>
                                                Trang Chủ
                                            </a>
                                        </li>
                                        <li class="pt-3">
                                            <a style="color: {{ request()->is('about') ? '#169775' : 'white' }}"
                                                class="font-bold" href="/about">
                                                Về Occo
                                            </a>
                                        </li>


                                        @if($siteSetting->enable_upgrade)
                                        <li class="pt-3">
                                            <a style="color: {{ request()->is('upgrade') ? '#169775' : 'white' }}"
                                                class="font-bold" href="/upgrade">
                                                Nâng cấp VIP
                                            </a>
                                        </li>
                                        @endif
                                        <li class="pt-3">
                                            <a style="color: {{ request()->is('privacy') ? '#169775' : 'white' }}"
                                                class="font-bold" href="/privacy">
                                                Chính sách bảo mật
                                            </a>
                                        </li>
                                        <li class="pt-3">
                                            <a style="color: {{ request()->is('rules') ? '#169775' : 'white' }}"
                                                class="font-bold" href="/rules">
                                                Thỏa thuận dịch vụ
                                            </a>
                                        </li>


                                    </ul>
                                </div>
                            </div>
                        </div>
                    </span>
                </button>
            </div>
            <div class="flex flex-row gap-5 max-[1300px]:gap-0 items-center max-lg:hidden text-customGrey">
                <div class="h-[90px] flex items-center px-2 border-0 max-[1300px]:w-fit"
                    style="{{ request()->is('/') ? 'color:white;background-image:linear-gradient(180deg, rgba(27, 10, 28, 0) 0%, rgb(179 186 74 / 20%) 80%, rgb(213 188 104 / 40%) 90%)' : '' }}">
                    <a class="w-full font-semibold text-[18px] max-[110px]:text-[12px] max-[1300px]:text-[14px] text-center"
                        href="/" wire:navigate>
                        Trang Chủ
                    </a>
                </div>
                <div class="h-[90px] flex items-center px-2 border-0 max-[1300px]:w-fit"
                    style="{{ request()->is('about') ? 'color:white;background-image:linear-gradient(180deg, rgba(27, 10, 28, 0) 0%, rgb(179 186 74 / 20%) 80%, rgb(213 188 104 / 40%) 90%)' : '' }}">
                    <a class="w-full font-semibold text-[18px] max-[110px]:text-[12px] max-[1300px]:text-[14px] text-center"
                        href="/about">
                        Về Occo
                    </a>
                </div>
                <div class="h-[90px] flex items-center px-2 border-0 max-[1300px]:w-fit"
                    style="{{ request()->is('privacy') ? 'color:white;background-image:linear-gradient(180deg, rgba(27, 10, 28, 0) 0%, rgb(179 186 74 / 20%) 80%, rgb(213 188 104 / 40%) 90%)' : '' }}">
                    <a class="w-full font-semibold text-[18px] max-[110px]:text-[12px] max-[1300px]:text-[14px] text-center"
                        href="/privacy">
                        Chính sách bảo mật
                    </a>
                </div>
                <div class="h-[90px] flex items-center px-2 border-0 max-[1300px]:w-fit"
                    style="{{ request()->is('rules') ? 'color:white;background-image:linear-gradient(180deg, rgba(27, 10, 28, 0) 0%, rgb(179 186 74 / 20%) 80%, rgb(213 188 104 / 40%) 90%)' : '' }}">
                    <a class="w-full font-semibold text-[18px] max-[110px]:text-[12px] max-[1300px]:text-[14px] text-center"
                        href="/rules">
                        Thỏa thuận dịch vụ
                    </a>
                </div>
                <div class="h-[90px] flex items-center min-w-[154px]">
                    @if($siteSetting->enable_upgrade)
                    <button class="bg-gradient-to-r from-p_1 to-p_2 text-white font-semibold rounded-full p-[1.5px]"
                    style="{{ request()->is('upgrade') ? 'background-image: linear-gradient(to right bottom, rgb(248, 193, 122), rgb(253, 215, 149));' : '' }}">
                    <span class="flex w-full bg-navCor text-white rounded-full p-2 px-5">
                        <a class="text-[16px] max-[110px]:text-[12px] max-[1300px]:text-[14px] text-center"
                            href="/upgrade">
                            Nâng cấp VIP
                        </a>
                    </span>
                </button>
                @endif
            
                </div>
            </div>

        </nav>
    </div>
</div>